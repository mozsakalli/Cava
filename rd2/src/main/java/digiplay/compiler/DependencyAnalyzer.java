/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package digiplay.compiler;

//import compiler.backend.c.A;


import digiplay.compiler.model.Clazz;
import digiplay.compiler.model.Method;
import digiplay.compiler.model.op.ClassConstant;
import digiplay.compiler.model.op.Invoke;
import digiplay.compiler.model.op.Op;

import java.util.*;

/**
 *
 * @author mustafa
 */
public class DependencyAnalyzer {

    Map<Method, Set<Method>> vRoot = new HashMap();
    Map<Method, Set<Method>> iRoot = new HashMap();
    List<Clazz> classQueue = new LinkedList();
    Set<Clazz> analyzedClasses = new HashSet();
    
    List<Method> methodQueue = new LinkedList();
    Set<Method> analyzedMethods = new HashSet();
    
    public void analyze(String mainClass) throws Exception {
        Clazz c = CompilerContext.resolve(mainClass);
        dependsClass(c);
        if(CavaOptions.targetPlatform() == Platform.Android) {
            if(c.superName == null || !c.superName.equals("cava/android/app/Activity"))
                throw new RuntimeException(mainClass+" must extend cava.android.app.Activity for Android target");
        } else {
            Method m = c.findDeclaredMethod("main", "()V");
            if(m == null) throw new Exception("Can't find main method "+mainClass+".main()V");
            if(!m.isStatic() || !m.type.equals("V") || !m.args.isEmpty()) throw new Exception("Main method must be a static void method without parameters");
            dependsMethod(m);
        }
        addRequiredClasses();
        
        while(!classQueue.isEmpty() || !methodQueue.isEmpty()) {
            while(!classQueue.isEmpty()) {
                c = classQueue.remove(0);
                analyzedClasses.add(c);
                analyzeClass(c);
            }
            
            while(!methodQueue.isEmpty()) {
                Method m = methodQueue.remove(0);
                analyzedMethods.add(m);
                analyzeMethod(m);
            }
            
            collectUsedMethods();
            linkClasses();
        }
        
        List<Map.Entry<Method,Set<Method>>> tmp = new ArrayList();
        tmp.addAll(vRoot.entrySet());
        tmp.sort((e1,e2) -> e1.getKey().declaringClass.compareTo(e2.getKey().declaringClass) + (e2.getValue().size() - e1.getValue().size()) * 1000);
        
        //generate virtual table indices
        int vtIndex = 0;
        for(Map.Entry<Method,Set<Method>> e : tmp) {
            Method root = e.getKey();
            Set<Method> children = e.getValue();
            children.remove(root);
            if(root.usedInProject) {
                root.virtualBaseClass = root.declaringClass;
                if(children.size() > 0 || root.isAbstract()) {
                    root.virtualTableIndex = vtIndex++;
                    for(Method vm : children) {
                        vm.virtualBaseClass = root.declaringClass;
                        vm.virtualTableIndex = root.virtualTableIndex;
                    }
                } else {
                    root.virtualBaseClass = null;
                }
            }
        }
        
        //generate interface table indices
        tmp.clear();
        tmp.addAll(iRoot.entrySet());
        tmp.sort((e1,e2) -> e1.getKey().declaringClass.compareTo(e2.getKey().declaringClass) + (e2.getValue().size() - e1.getValue().size()) * 1000);
        int itIndex = 0;
        for(Map.Entry<Method,Set<Method>> e : tmp) {
            Method root = e.getKey();
            Set<Method> children = e.getValue();
            children.remove(root);
            if(root.usedInProject) {
                root.interfaceTableIndex = itIndex++;
                for(Method im : children) {
                    im.interfaceTableIndex = root.interfaceTableIndex;
                    im.interfaceBaseClass = root.declaringClass;
                    Clazz ic = CompilerContext.resolve(im.declaringClass);
                    ic.interfaceTableSize = Math.max(ic.interfaceTableSize, im.interfaceTableIndex+1);
                }
            }
        }
        
        //correct interface table sizes
        CompilerContext.classes.values().forEach(mc -> {
            if(!mc.isInterface && mc.superName != null) {
                Clazz sc = CompilerContext.resolve(mc.superName);
                while(sc != null) {
                    mc.interfaceTableSize = Math.max(mc.interfaceTableSize, sc.interfaceTableSize);
                    if(sc.superName == null) break;
                    sc = CompilerContext.resolve(sc.superName);
                }
            }
            
        });
        
    }

    private void linkClasses() {
        List<Clazz> tmp = new ArrayList();
        tmp.addAll(CompilerContext.classes.values());
        tmp.forEach(c -> {
            if(!c.isInterface) {
                c.methods.forEach(m -> {
                    if(!m.isStatic() && !m.name.equals("<init>")) {
                        Map.Entry<Method,Set<Method>> entry =
                        vRoot.entrySet().stream()
                        .filter(e -> 
                                e.getKey().name.equals(m.name) && 
                                e.getKey().signature.equals(m.signature) &&
                                c.extendsClass(e.getKey().declaringClass)
                            )
                            .findFirst().orElse(null);
                        
                        if(entry != null && !entry.getKey().declaringClass.equals(m.declaringClass)){
                            entry.getValue().add(m);
                            dependsMethod(m);
                        }

                        entry = 
                        iRoot.entrySet().stream()
                        .filter(e -> 
                                e.getKey().name.equals(m.name) && 
                                e.getKey().signature.equals(m.signature) &&
                                c.implementsInterface(e.getKey().declaringClass)
                            )
                            .findFirst().orElse(null);
                        
                        if(entry != null && !entry.getKey().declaringClass.equals(m.declaringClass)){
                            entry.getValue().add(m);
                            dependsMethod(m);
                        }
                    }
                });
            }
        });
    }
    
    private void collectUsedMethods() {
        collectRoot(vRoot);
        collectRoot(iRoot);
    }
    
    private void collectRoot(Map<Method, Set<Method>> rootMap) {
        rootMap.forEach((root,set) -> {
            boolean used = root.usedInProject;
            if(!used) {
                for(Method m : set)
                    if(m.usedInProject) {
                        used = true;
                        break;
                    }
            }
            if(used) {
                if(!root.usedInProject) dependsMethod(root);
                for(Method m : set)
                    if(!m.usedInProject) dependsMethod(m);
            }
        });
    }

    private void analyzeClass(Clazz c) {
        String modifyClass = A.modify(c, CavaOptions.targetPlatform());
        if(modifyClass != null) {
            Clazz modifier = CompilerContext.resolve(modifyClass);
            modifier.replaceClassName(c.name);
            boolean found = false;
            for(Method m : modifier.methods) {
                if(m.name.equals("<init>") || m.name.equals("<clinit>")) continue;
                for(int i=0; i<c.methods.size(); i++) {
                    Method om = c.methods.get(i);
                    if(om.name.equals(m.name) && om.signature.equals(m.signature)) {
                        c.methods.set(i, m);
                        found = true;
                        break;
                    }
                }
                if(!found) c.methods.add(m);
                if(analyzedMethods.contains(m)) {
                    analyzedMethods.remove(m);
                    dependsMethod(m);
                }
                
            }
            //this class is only for overriding existing classes
            //dont generate
            CompilerContext.classes.remove(modifyClass);
        }
        
        if(c.superName != null) dependsClass(c.superName);
        c.interfaces.forEach(i -> dependsClass(i));
        
        boolean isStruct = c.isStruct();
        final boolean isObjCInterface = c.isInterface && A.hasObjC(c);
        boolean isClassKeep = A.hasKeep(c) || isObjCInterface;
        
        //include required fields
        c.fields.forEach(field -> {
            if(!field.usedInProject)
                field.usedInProject = isClassKeep || isStruct || A.hasKeep(field);
            if(field.usedInProject)
                dependsClass(field.type);
        });
        for(Method m : c.methods) {
            m.interfaceTableIndex = -1;
            if(isClassKeep || m.name.equals("<clinit>") || A.hasKeep(m) ||
               (m.name.equals("<init>") && m.args.isEmpty()) ||
               (m.name.equals("<init>") && m.args.size() == 1 && m.args.get(0).type.equals("cava/c/VoidPtr"))  || //objc      
               (isStruct && A.hasNative(m)) ||
               (m.name.equals("finalize") && m.signature.equals("()V"))     
            ) {
                m.usedInProject = true;    
                dependsMethod(m);
            }
        }
    }
    
    private void analyzeMethod(Method m) {
        m.usedInProject = true;
        m.interfaceTableIndex = m.virtualTableIndex = -1;
        dependsClass(m.type);
        m.args.forEach(arg -> dependsClass(arg.type));
        dependsClass(m.declaringClass);
        if(!m.isStatic() && !m.name.equals("<init>")) {
            List<Method> chain = new ArrayList();
            Clazz c = CompilerContext.resolve(m.declaringClass);
            while(c != null) {
                dependsClass(c);
                Method cm = c.findMethod(m.name, m.signature);
                if(cm != null) chain.add(cm);
                if(c.superName == null || (c.isInterface && c.superName.equals("java/lang/Object"))) break;
                c = CompilerContext.resolve(c.superName);
            }

            Method root = chain.get(chain.size() - 1);
            dependsMethod(root);
            Map<Method,Set<Method>> map = c.isInterface ? iRoot : vRoot;
            Set<Method> set = map.computeIfAbsent(root, (k) -> new HashSet());
            for(int i=0; i<chain.size() - 1; i++) {
                set.add(chain.get(i));
                dependsMethod(chain.get(i));
            }
        }

        for(Op ins : m.instructions) {
            if(ins.value != null && ins.value instanceof ClassConstant)
                dependsClass(((ClassConstant)ins.value).name);
            if(ins instanceof Invoke) {
                Invoke inv = (Invoke)ins;
                Clazz tc = CompilerContext.resolve(inv.className);
                dependsClass(tc);
                Method tm = tc.findMethod(inv.methodName, inv.signature);
                if(tm == null) {
                    throw new RuntimeException("Can't find method: "+inv.className+"."+inv.methodName+inv.signature);
                }
                dependsMethod(tm);
            }
        }
        /*
        m.visit(new Visitor() {
            
            @Override
            public void call(Call c) {
                Clazz tc = CompilerContext.resolve(c.className);
                dependsClass(tc);
                Method tm = tc.findMethod(c.methodName, c.signature);
                if(tm == null) {
                    throw new RuntimeException("Can't find method: "+c.className+"."+c.methodName+c.signature);
                }
                dependsMethod(tm);
            }

            @Override
            public void field(Field f) {
                Clazz tc = CompilerContext.resolve(f.className);
                dependsClass(tc);
                NameAndType field = tc.findField(f.name);
                if(field == null) throw new RuntimeException("Can't find field: "+f.className+"."+f.name);
                field.usedInProject = true;
                dependsClass(field.type);
            }

            
            @Override
            public void visitClassReference(String className) {
                dependsClass(className);
            }
        });*/
        
    }
    
    
    private void dependsClass(Clazz c) {
        if(!analyzedClasses.contains(c) && !classQueue.contains(c))
            classQueue.add(c);
    }
    
    private void dependsClass(String name) {
        if(DecompilerUtils.isArray(name)) {
            name = DecompilerUtils.elementType(name);
        }
        if(!DecompilerUtils.isPrimitive(name)) {
            dependsClass(CompilerContext.resolve(name));
        }
    }
    
    private void dependsMethod(Method m) {
        if(!analyzedMethods.contains(m) && !methodQueue.contains(m))
            methodQueue.add(m);
    }
    
    //These classes are required base classes for Cava native C codes
    void addRequiredClasses() {
        for(String name : new String[]{
            "java/lang/Class",
            "java/lang/String",
            "java/lang/Thread",
            "java/lang/Throwable",
            "java/lang/Byte",
            "java/lang/Boolean",
            "java/lang/Character",
            "java/lang/Short",
            "java/lang/Integer",
            "java/lang/Float",
            "java/lang/Long",
            "java/lang/Double",
            "java/lang/NullPointerException",
            "java/lang/ClassCastException",
            "java/lang/ArrayIndexOutOfBoundsException",
            "java/lang/StackOverflowError",
            "java/lang/reflect/Method",
            "java/lang/reflect/Field",
            "java/lang/reflect/Constructor",            
        }) {
            dependsClass(name);
        }
        if(CavaOptions.debug()) {
            Clazz c = CompilerContext.resolve("com/cava/debugger/Debugger");
            Method m = c.findDeclaredMethod("start", "(Ljava/lang/String;I)V");
            if(m == null) throw new RuntimeException("Can't find com.cava.debugger.Debugger.start(String,int) method");
            dependsClass(c);
            dependsMethod(m);
        }
        
    }
    
}

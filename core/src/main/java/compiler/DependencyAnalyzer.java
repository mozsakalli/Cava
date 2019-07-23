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

package compiler;

import compiler.backend.c.A;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Call;
import compiler.model.ast.Field;
import compiler.model.ast.Visitor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
        Method m = c.findDeclaredMethod("main", "()V");
        if(m == null) throw new Exception("Can't find main method "+mainClass+".main()V");
        if(!m.isStatic() || !m.type.equals("V") || !m.args.isEmpty()) throw new Exception("Main method must be a static void method without parameters");
        
        dependsClass(c);
        dependsMethod(m);
        addRequiredClasses();
        
        while(!classQueue.isEmpty() || !methodQueue.isEmpty()) {
            while(!classQueue.isEmpty()) {
                c = classQueue.remove(0);
                analyzedClasses.add(c);
                analyzeClass(c);
            }
            
            while(!methodQueue.isEmpty()) {
                m = methodQueue.remove(0);
                analyzedMethods.add(m);
                analyzeMethod(m);
            }
            
            collectUsedMethods();
        }
        
        List<Map.Entry<Method,Set<Method>>> tmp = new ArrayList();
        tmp.addAll(vRoot.entrySet());
        tmp.sort((e1,e2) -> e1.getKey().declaringClass.compareTo(e2.getKey().declaringClass) + (e2.getValue().size() - e1.getValue().size()) * 1000);
        tmp.forEach(e -> {
            System.out.println(e.getKey()+" -> "+e.getValue());
        });
        
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
        System.out.println("-- interfaces --");
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
        tmp.forEach(e -> {
            System.out.println("ıntf: "+e.getKey().usedInProject+":" +e.getKey()+" -> "+e.getValue());
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
        boolean isStruct = c.isStruct();
        final boolean isObjCInterface = c.isInterface && A.hasObjC(c);
        boolean isClassKeep = A.hasKeep(c) || isObjCInterface;
        
        if(!isStruct) {
        List<Clazz> superList = new LinkedList();
        if(c.superName != null) {
            Clazz sc = CompilerContext.resolve(c.superName);
            while(sc != null) {
                dependsClass(sc);
                superList.add(sc);
                if(sc.superName == null) break;
                sc = CompilerContext.resolve(sc.superName);
            }
        }
        
        Set<Clazz> interfaceList = new HashSet();
        collectInterfaces(c, interfaceList);
        for(Clazz sc : superList)
            collectInterfaces(sc, interfaceList);
        
        for(Method m : c.methods) {
            m.interfaceTableIndex = -1;
            if(isClassKeep || m.name.equals("<clinit>") || 
               (m.name.equals("<init>") && m.args.isEmpty()) ||
               (m.name.equals("<init>") && m.args.size() == 1 && m.args.get(0).type.equals("cava/c/VoidPtr"))  || //objc      
               (isStruct && A.hasNative(m))     
            )
                dependsMethod(m);
            
            if(!m.isStatic() && !m.name.equals("<init>")) {
                if(!c.isInterface) {
                    //build virtual tree
                    List<Method> list = new ArrayList();
                    list.add(m);
                    for(Clazz sc : superList) {
                        Method rm = sc.findDeclaredMethod(m.name, m.signature);
                        if(rm != null) list.add(rm);
                    }

                    Method root = list.get(list.size() - 1);
                    Set<Method> set = vRoot.computeIfAbsent(root, (k) -> new HashSet());
                    for(int i=0; i<list.size()-1; i++)
                        set.add(list.get(i));


                    //build interface tree
                    for(Clazz ic : interfaceList) {
                        Method im = ic.findDeclaredMethod(m.name, m.signature);
                        if(im != null) {
                            set = iRoot.computeIfAbsent(im, (k) -> new HashSet());
                            set.add(m);
                        }
                    }
                }
            }
        }
        } else {
            for(Method m : c.methods) 
                dependsMethod(m);
        }

        c.fields.forEach(field -> {
            if(!field.usedInProject)
                field.usedInProject = isClassKeep || isStruct || A.hasKeep(field);
            if(field.usedInProject)
                dependsClass(field.type);
        });
    }
    
    void collectInterfaces(Clazz c, Set<Clazz> set) {
        for(String iName : c.interfaces) {
            Clazz ic = CompilerContext.resolve(iName);
            while(ic != null) {
                set.add(ic);
                dependsClass(ic);
                if(ic.superName == null || ic.superName.equals("java/lang/Object")) break;
                ic = CompilerContext.resolve(ic.superName);
            }
        }
    }
    private void analyzeMethod(Method m) {
        m.usedInProject = true;
        dependsClass(m.type);
        m.args.forEach(arg -> dependsClass(arg.type));
        m.body.visit(new Visitor() {
            @Override
            public void call(Call c) {
                Clazz tc = CompilerContext.resolve(c.className);
                dependsClass(tc);
                Method tm = tc.findMethod(c.methodName, c.signature);
                if(tm == null) throw new RuntimeException("Can't find method: "+c.className+"."+c.methodName+c.signature);
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
        });
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
            Method m = c.findDeclaredMethod("start", "(I)V");
            if(m == null) throw new RuntimeException("Can't find com.cava.debugger.Debugger.start(I)V method");
            dependsClass(c);
            dependsMethod(m);
        }
        
    }
    
    /*
    
    
    Set analyzed = new HashSet();
    List pending = new ArrayList();
    Map<Method, Set<Method>> vRoot = new HashMap();
    Map<Method, Set<Method>> iRoot = new HashMap();
    
    void depends(Object o) {
        if(!analyzed.contains(o) && !pending.contains(o))
            pending.add(o);
    }
    void depends(String name) {
        if(DecompilerUtils.isArray(name)) {
            name = DecompilerUtils.elementType(name);
        }
        if(!DecompilerUtils.isPrimitive(name)) {
            depends(CompilerContext.resolve(name));
        }
    }
    
    public void analyze(String mainClass) throws Exception {
        Clazz c = CompilerContext.resolve(mainClass);
        Method m = c.findDeclaredMethod("main", "()V");
        if(m == null) throw new Exception("Can't find main method "+mainClass+".main()V");
        if(!m.isStatic() || !m.type.equals("V") || !m.args.isEmpty()) throw new Exception("Main method must be a static void method without parameters");
     
        pending.add(m);
        addRequiredClasses();
        while(!pending.isEmpty()) {
            Object o = pending.remove(0);
            if(analyzed.contains(o)) continue;
            analyzed.add(o);
            
            if(o instanceof Method) {
                m = (Method)o;
                if(m.name.contains("createApplication"))
                    System.out.println("...");
                m.usedInProject = true;
                depends(m.declaringClass);
                depends(m.type);
                m.args.forEach(arg -> depends(arg.type));
                c = CompilerContext.resolve(m.declaringClass);
                if(!m.isStatic() && !m.isNative() && c.superName != null && !m.name.equals("<init>")) {
                    if(!c.isInterface) {
                        Clazz sc = CompilerContext.resolve(c.superName);
                        Method root = m;
                        Set<Method> children = new HashSet();
                        children.add(m);
                        while(sc != null) {
                            Method sm = sc.findDeclaredMethod(m.name, m.signature);
                            if(sm != null) {
                                root = sm;
                                children.add(sm);
                                depends(sm);
                            }
                            if(sc.superName == null) break;
                            sc = CompilerContext.resolve(sc.superName);
                        }
                        Set<Method> set = vRoot.computeIfAbsent(root, (k) -> new HashSet());
                        children.remove(root);
                        set.addAll(children);
                        sc = CompilerContext.resolve(root.declaringClass);
                        analyzed.remove(sc);
                        depends(sc);
                    } else {
                        iRoot.computeIfAbsent(m, (k) -> new HashSet());
                    }
                }

                m.body.visit(new Visitor(){
                    @Override
                    public void call(Call c) {
                        Clazz cc = CompilerContext.resolve(c.className);
                        Method cm = cc.findMethod(c.methodName, c.signature);
                        if(cm == null) throw new RuntimeException("Can't find method: "+c.className+"."+c.methodName+"."+c.signature);
                        depends(cm);
                        if(cc.isInterface) {
                            pending.remove(cc);
                            analyzed.remove(cc);
                            depends(cc);
                        }
                    }

                    @Override
                    public void field(Field f) {
                        Clazz cc = CompilerContext.resolve(f.className);
                        NameAndType field = cc.findField(f.name);
                        if(field == null) throw new RuntimeException("Can't find field: "+f.className+"."+f.name);
                        field.usedInProject = true;
                        depends(field.type);
                    }

                    
                    @Override
                    public void visitClassReference(String className) {
                        depends(className);
                    }

                    
                });
            } else {
                final Clazz fc = (Clazz)o;
                if(fc.name.contains("$Delegate"))
                    System.out.println("...");
                if(fc.superName != null) depends(fc.superName);
                final boolean isObjCInterface = fc.isInterface && A.hasObjC(fc);
                final boolean isClassKeep = A.hasKeep(fc) || isObjCInterface;
                fc.methods.forEach(cm -> {
                    if(isClassKeep || 
                       (cm.name.equals("<init>") && cm.args.isEmpty()) || 
                        cm.name.equals("<clinit>") ||
                       (cm.name.equals("<init>") && cm.args.size()==1 && cm.args.get(0).type.equals("cava/c/VoidPtr")) //objc init     
                    )
                        depends(cm);
                    if(isObjCInterface) {
                        iRoot.computeIfAbsent(cm, (k) -> new HashSet());
                        cm.usedInProject = true; 
                    }
                });
                fc.fields.forEach(f -> {
                    if(isClassKeep || A.hasKeep(f)) {
                        f.usedInProject = true;
                        depends(f.type);
                    }
                });

                if(fc.isInterface) {
                    for(Method im : fc.methods) {
                        if(!iRoot.containsKey(im)) continue;
                        List<Clazz> list = new ArrayList();
                        list.addAll(CompilerContext.classes.values());
                        for(Clazz impc : list) {
                            if(!impc.isInterface) {
                                Method fm = impc.findMethod(im.name, im.signature);
                                if(fm != null) {
                                    depends(fm);
                                    iRoot.get(im).add(fm);
                                    fm.usedInProject = true;
                                    if(isObjCInterface) {
                                        fm.isObjCImplementation = true;
                                        fm.interfaceBaseClass = im.declaringClass;
                                        impc.isObjCImplementation = true;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    for(Method vm : fc.methods) {
                        if(vm.isStatic() || vm.isNative()) continue;
                        
                        //this is a root method check for children
                        if(vRoot.containsKey(vm)) {
                            
                            System.out.println("vRoot: "+vm);
                        }
                        Clazz sc = fc;
                        Method root = vm;
                        List<Method> list = new ArrayList();
                        while(sc != null) {
                            Method fm = sc.findDeclaredMethod(vm.name, vm.signature);
                            if(fm != null) {
                                root = fm;
                                list.add(fm);
                            }
                            if(sc.superName == null) break;
                            sc = CompilerContext.resolve(sc.superName);
                        }
                        if(vRoot.containsKey(root)) {
                            for(Method lvm : list) {
                                depends(lvm);
                                vRoot.get(root).add(lvm);
                            }
                        }
                    }
                }   
                
                fc.interfaces.forEach(intfName -> {
                    depends(intfName);
                    Clazz intf = CompilerContext.resolve(intfName);
                    while(intf != null) {
                        final boolean isObjC = A.hasObjC(intf);
                        intf.methods.forEach(im -> {
                            if(iRoot.containsKey(im)) {
                                Method mm = fc.findMethod(im.name, im.signature);
                                if(mm != null) {
                                    iRoot.get(im).add(mm);
                                    mm.isObjCImplementation = true;
                                }
                            }
                        });
                        
                        if(intf.superName == null || intf.superName.equals("java/lang/Object")) break;
                        intf = CompilerContext.resolve(intf.superName);
                    }
                });
            }
        }

        iRoot.entrySet().forEach(e -> {
            //System.out.println(e.getKey()+" -> "+e.getValue());
        });
        List<Map.Entry<Method,Set<Method>>> tmp = new ArrayList();
        tmp.addAll(vRoot.entrySet());
        tmp.sort((e1,e2) -> e1.getKey().declaringClass.compareTo(e2.getKey().declaringClass) + (e2.getValue().size() - e1.getValue().size()) * 1000);
        int vtIndex = 0;
        for(Map.Entry<Method,Set<Method>> e : tmp) {
            Method root = e.getKey();
            Set<Method> children = e.getValue();
            children.remove(root);
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
            System.out.println(e.getKey()+" -> "+e.getValue());
        }
    }
    
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
            depends(name);
        }
        if(CavaOptions.debug()) {
            Clazz c = CompilerContext.resolve("com/cava/debugger/Debugger");
            Method m = c.findDeclaredMethod("start", "(I)V");
            if(m == null) throw new RuntimeException("Can't find com.cava.debugger.Debugger.start(I)V method");
            depends(m);
        }
        
    }
    */
}

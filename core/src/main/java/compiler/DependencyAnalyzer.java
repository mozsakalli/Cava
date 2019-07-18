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
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class DependencyAnalyzer {
    
    List queue = new ArrayList();
    Set seen = new HashSet();

    void buildRootMethods() {
        
    }
    
    public void analyze(String mainClass/*, String mainMethod, String mainSignature*/) throws Exception {
        final Set<Method> analyzedMethods = new HashSet();
        final Set<Clazz> analyzedClasses = new HashSet();
        final ArrayList<Method> methodQueue = new ArrayList();
        final Map<Method, Set<Method>> rootVirtualMethods = new HashMap();
        final Map<Method, Set<Method>> rootInterfaceMethods = new HashMap();
        final List<String> pendingClasses = new ArrayList();
        
        //first load required system classes
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
            pendingClasses.add(name);
        }
        
        if(CavaOptions.debug())
            pendingClasses.add("debugger/Debugger");
        
        pendingClasses.add(mainClass);
        
        //todo
        String mainMethod = null;
        String mainSignature = null;
        
        Clazz c = CompilerContext.resolve(mainClass);
        if(mainMethod == null) {
            mainMethod = "main";
        }
        if(mainSignature == null) {
            mainSignature = "()V";
        }
        Method m = c.findDeclaredMethod(mainMethod, mainSignature);
        if(m == null) throw new Exception("Can't find main method "+mainClass+"."+mainMethod+mainSignature);
        methodQueue.add(m);
        while(!methodQueue.isEmpty()) {
            while(!methodQueue.isEmpty()) {
                m = methodQueue.remove(0);
                m.usedInProject = true;
                if(analyzedMethods.contains(m)) continue;
                analyzedMethods.add(m);
                pendingClasses.add(m.declaringClass);
                
                for(NameAndType arg : m.args) {
                    String type = DecompilerUtils.elementType(arg.type);
                    if(!DecompilerUtils.isPrimitive(type))
                        pendingClasses.add(type);
                }
                
                if(!m.type.equals("V")) {
                    String type = DecompilerUtils.elementType(m.type);
                    if(!DecompilerUtils.isPrimitive(type))
                        pendingClasses.add(type);
                }
                
                while(!pendingClasses.isEmpty()) {
                    c = CompilerContext.resolve(pendingClasses.remove(0));
                    if(analyzedClasses.contains(c)) continue;
                    analyzedClasses.add(c);
                    boolean isClassKeep = CompilerContext.keepAll || A.hasKeep(c);
                    for(Method cm : c.methods) {
                        boolean isInitializer = (cm.name.equals("<clinit>") || (cm.name.equals("<init>") && cm.args.size() == 0));
                        if(!analyzedMethods.contains(cm) && !methodQueue.contains(cm) && (isClassKeep || A.hasKeep(cm) || isInitializer)) {
                            methodQueue.add(cm);
                        }
                    }
                    
                    for(NameAndType f : c.fields) {
                        if(isClassKeep || A.hasKeep(f)) f.usedInProject = true;
                    }
                    
                    if(c.superName != null) {
                        Clazz sc = CompilerContext.resolve(c.superName);
                        if(!analyzedClasses.contains(sc)) pendingClasses.add(c.superName);
                    }
                    
                    for(String iname : c.interfaces) {
                        Clazz cc = CompilerContext.resolve(iname);
                        if(!analyzedClasses.contains(cc)) pendingClasses.add(iname);
                    }
                }

                if(m.body != null && !m.body.children.isEmpty()) {
                    m.body.visit(new Visitor() {

                        @Override
                        public void call(Call c) {
                            final Clazz pc = CompilerContext.resolve(c.className);
                            Method pm = pc.findMethod(c.methodName, c.signature);
                            if(pm == null) throw new RuntimeException("Can't find method: "+c.className+"."+c.methodName+c.signature);
                            pm.usedInProject = true;
                            if(!analyzedMethods.contains(pm) && !methodQueue.contains(pm)) {
                                methodQueue.add(pm);
                            }
                            if(c.callType == Call.CallType.Virtual ) {
                                Clazz rc = pc;
                                List<Method> methods = new ArrayList();
                                while(rc != null) {
                                    Method frc = rc.findDeclaredMethod(pm.name, pm.signature);
                                    if(frc != null) methods.add(frc);
                                    if(rc.superName != null)
                                        rc = CompilerContext.resolve(rc.superName);
                                    else break;
                                }
                                for(Method im : methods) {
                                    if(!analyzedMethods.contains(im) && !methodQueue.contains(im)) methodQueue.add(im);
                                }

                                Method root = methods.remove(methods.size() - 1);
                                Set<Method> implementors = rootVirtualMethods.computeIfAbsent(root, (k) -> new HashSet());
                                implementors.addAll(methods);
                            } else if(c.callType == Call.CallType.Interface) {
                                Set<Method> implementors = rootInterfaceMethods.computeIfAbsent(pm, (k) -> new HashSet());
                            }
                        }

                        @Override
                        public void field(Field f) {
                            pendingClasses.add(f.className);
                            Clazz fc = CompilerContext.resolve(f.className);
                            NameAndType ft = fc.findField(f.name);
                            if(ft == null) throw new RuntimeException("Can't find field: "+f.className+":"+f.name);
                            ft.usedInProject = true;
                            if(!ft.declaringClass.equals(f.className)) pendingClasses.add(ft.declaringClass);
                            String type = DecompilerUtils.elementType(ft.type);
                            if(!DecompilerUtils.isPrimitive(type))
                                pendingClasses.add(type);
                        }
                        
                        @Override
                        public void visitClassReference(String className) {
                            pendingClasses.add(className);
                        }

                    });
                }
            }

            //check interface methods must be included
            for(Map.Entry<Method, Set<Method>> e : rootInterfaceMethods.entrySet()) {
                Method im = e.getKey();
                
                //method's interface may be extended from another interface
                Set<String> searchedInterfaces = new HashSet();
                Clazz imc = CompilerContext.resolve(im.declaringClass);
                while(imc != null) {
                    if(imc.findDeclaredMethod(im.name, im.signature) != null)
                        searchedInterfaces.add(imc.name);
                    for(String iname : imc.interfaces)
                        if(CompilerContext.resolve(iname).findDeclaredMethod(im.name, im.signature) != null)
                            searchedInterfaces.add(iname);
                    if(imc.superName == null || imc.superName.equals("java/lang/Object")) break;
                    imc = CompilerContext.resolve(imc.superName);
                }
                
                for(Clazz cls : analyzedClasses) {
                    if(!cls.isInterface) {
                        Clazz root = cls;
                        Set<String> implementedInterfaces = new HashSet();
                        while(root != null) {
                            implementedInterfaces.addAll(root.interfaces);
                            if(root.superName == null) break;
                            root = CompilerContext.resolve(root.superName);
                        }
                        root = cls;
                        while(root != null) {
                            boolean implemented = false;
                            for(String iname : implementedInterfaces)
                                if(searchedInterfaces.contains(iname)) {
                                    implemented = true;
                                    break;
                                }
                            if(implemented) {
                                Method fm = root.findDeclaredMethod(im.name, im.signature);
                                if(fm != null) {
                                    if(!fm.isAbstract() && !fm.isNative()) {
                                        e.getValue().add(fm);
                                    }
                                    pendingClasses.add(fm.declaringClass);
                                    if(!analyzedMethods.contains(fm))
                                        methodQueue.add(fm);
                                }
                            }
                            if(root.superName == null) break;
                            root = CompilerContext.resolve(root.superName);
                        }
                    }
                }
            }
            
            //check virtual methods must be included
            for(Map.Entry<Method, Set<Method>> e : rootVirtualMethods.entrySet()) {
                Method vm = e.getKey();
                for(Clazz cls : analyzedClasses) {
                    if(cls.isInterface) continue;
                    Clazz root = cls;
                    while(root != null) {
                        Method fm = root.findDeclaredMethod(vm.name, vm.signature);
                        pendingClasses.add(root.name);
                        if(fm != null) {
                            if(fm != vm)
                                e.getValue().add(fm);
                            if(!analyzedMethods.contains(fm))
                                methodQueue.add(fm);
                        }
                        if(root.superName == null) break;
                        root = CompilerContext.resolve(root.superName);
                    }
                }
            }
            
            
        }
        /*
        for(Map.Entry<Method, Set<Method>> e : rootVirtualMethods.entrySet()) {
            Method root = e.getKey();
            Set<Method> implementors = e.getValue();
            int implementorCount = implementors.size();
            if(!root.isAbstract()) implementorCount++;
            //this virtual method overriden
            if(implementorCount > 1) {
                root.virtualBaseClass = root.declaringClass;
                for(Method vm : implementors) {
                    vm.usedInProject = true;
                    vm.virtualBaseClass = root.declaringClass;
                }
            } else if(root.isAbstract()) {
                System.out.println("abstract root: "+root);
            }
        }
        
        Map.Entry<Method, Set<Method>> list[] = rootVirtualMethods.entrySet().toArray(new Map.Entry[rootVirtualMethods.size()]);
        Arrays.sort(list, (m1, m2) -> m1.getKey().toString().compareTo(m2.getKey().toString()));
        
        for(Map.Entry<Method, Set<Method>> e : list) {
            System.out.print(e.getKey()+" = ");
            for(Method m2 : e.getValue())
                System.out.print(m2+"  ");
            System.out.println();
        }
        /*
        System.out.println("ınterfaces--------------------");
        list = rootInterfaceMethods.entrySet().toArray(new Map.Entry[rootInterfaceMethods.size()]);
        Arrays.sort(list, (m1, m2) -> m1.getKey().toString().compareTo(m2.getKey().toString()));
        for(Map.Entry<Method, Set<Method>> e : list) {
            System.out.print(e.getKey()+" = ");
            for(Method m2 : e.getValue())
                System.out.print(m2+"  ");
            System.out.println();
        }*/
    }

    Map<Clazz, Set<String>> interfaceCache = new HashMap();
    Set<String> getAllInterfaces(Clazz c) {
        Set<String> set = interfaceCache.get(c);
        if(set != null) return set;
        set = new HashSet();
        while(c != null) {
            for(String iname : c.interfaces) {
                Clazz ic = CompilerContext.resolve(iname);
                while(ic != null) {
                    set.add(ic.name);
                    if(ic.superName == null || ic.superName.equals("java/lang/Object")) break;
                    ic = CompilerContext.resolve(ic.superName);
                }
            }
            if(c.superName == null) break;
            c = CompilerContext.resolve(c.superName);
        }
        interfaceCache.put(c, set);
        return set;
    }
  
}

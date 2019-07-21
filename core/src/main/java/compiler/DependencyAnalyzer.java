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
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class DependencyAnalyzer {
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
                if(fc.superName != null) depends(fc.superName);
                final boolean isClassKeep = A.hasKeep(fc);
                fc.methods.forEach(cm -> {
                    if(isClassKeep || (cm.name.equals("<init>") && cm.args.isEmpty()) || cm.name.equals("<clinit>"))
                        depends(cm);
                });

                if(fc.isInterface) {
                    for(Method im : fc.methods) {
                        if(!iRoot.containsKey(im)) continue;
                        List<Clazz> list = new ArrayList();
                        list.addAll(CompilerContext.classes.values());
                        for(Clazz impc : list) {
                            if(!impc.isInterface) {
                                Method fm = impc.findMethod(im.name, im.signature);
                                if(fm != null) depends(fm);
                            }
                        }
                    }
                } else {
                    for(Method vm : fc.methods) {
                        if(vm.isStatic() || vm.isNative()) continue;
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
                        intf.methods.forEach(im -> {
                            if(iRoot.containsKey(im)) {
                                Method mm = fc.findMethod(im.name, im.signature);
                                if(mm != null) iRoot.get(im).add(mm);
                            }
                        });
                        
                        if(intf.superName == null || intf.superName.equals("java/lang/Object")) break;
                        intf = CompilerContext.resolve(intf.superName);
                    }
                });
            }
        }

        
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
  
}

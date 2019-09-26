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

package com.cava.compiler;

//import compiler.backend.StringCollector;
//import compiler.backend.c.A;
//import compiler.backend.c.CBackend;
import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
//import compiler.project.Project;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class CompilerContext {
    
    public static File[] classPath;
    public static File[] shadowClassPath;
    public static Map<String, Clazz> classes = new HashMap();
    public static StringCollector stringCollector;// = new StringCollector();
    
    public static boolean keepAll;
    public static File platformBuildDir;
    public static File classCacheDir;

    public static Method getMainMethod() {
        //todo: 
        return CavaOptions.targetPlatform() == Platform.Android ?
                classes.get(CavaOptions.mainClass()).findDeclaredMethod("onCreate", "(Lcava/android/os/Bundle;)V") :
                classes.get(CavaOptions.mainClass()).findDeclaredMethod("main", "()V");
    }
    
    static Clazz load(String name) {
        return SootClassLoader.load(name);
        /*
        System.out.println("Decompiling "+name);
        PlainTextOutput po = new PlainTextOutput();
        DecompilerSettings settings = getDecompilerSettings();
        Decompiler.decompile(name.replace('.', '/'), po, settings);
        Clazz clazz = ((ModelLanguage)settings.getLanguage()).clazz;
        return clazz;
        
        //return SootDecompiler.decompile(name);
        */
        
    }
    
    
    public static void defineLambdaClass(Clazz c) throws Exception {
        File path = new File(classCacheDir, c.name.replace('/', '.')+".model");
        path.getParentFile().mkdirs();
        FileOutputStream fout = new FileOutputStream(path);
        ObjectOutputStream out = new ObjectOutputStream(fout);
        out.writeObject(c);
        out.close();
        fout.close();
        classes.put(c.name, c);
    }
    
    static HashSet<String> loadingClasses = new HashSet();
    public static Clazz resolve(String name) {
        Clazz clazz = null;
        try {
            clazz =  _resolve(name);
        } catch(Exception e){
            throw new RuntimeException(e);
        }
        /*todo if(A.hasObjC(clazz) && !CavaOptions.targetPlatform().isObjC())
            throw new RuntimeException(CavaOptions.targetPlatform()+" does not support Objective-C class: "+name);
        */
        return clazz;
    }
    
    static long ioTime;
    static long decompileTime;
    
    public static Clazz _resolve(String name) throws Exception {
        Clazz clazz = classes.get(name);
        if(clazz != null) return clazz;
        System.out.println("Decompiling "+name);
                
        if(name.startsWith("[")) {
            clazz = new Clazz();
            clazz.name = name;
            clazz.superName = "java/lang/Object";
            classes.put(name, clazz);
            name = name.substring(1);
            if(DecompilerUtils.isArray(name) || !DecompilerUtils.isPrimitive(name)) {
                clazz.elementType = resolve(name).name;
            } else clazz.elementType = name;
            return clazz;
        }
        boolean needsCompile = false;
        long classTime = ClassFileFinder.getClassTime(name);// getClassTime(name);
        File path = new File(classCacheDir,name.replace('/', '.')+".model");
        boolean isLambdaClass = name.endsWith("$Lambda");
        if(isLambdaClass) {
            if(!path.exists()) throw new RuntimeException("Can't find lambda class "+path);
        }
        else if(!path.exists() || path.lastModified() != classTime) {
            long time = System.currentTimeMillis();
            clazz = load(name);
            decompileTime += System.currentTimeMillis() - time;

            classes.put(name, clazz);
            //soot LambdaGenerator.process();

            time = System.currentTimeMillis();
            path.getParentFile().mkdirs();
            FileOutputStream fout = new FileOutputStream(path);
            ObjectOutputStream out = new ObjectOutputStream(fout);
            out.writeObject(clazz);
            out.close();
            fout.close();
            path.setLastModified(classTime);
            ioTime += System.currentTimeMillis() - time;
            needsCompile = true;
        }
        if(clazz == null) {
            long time = System.currentTimeMillis();
            ObjectInputStream in = new ObjectInputStream(new BufferedInputStream(new FileInputStream(path)));
            clazz = (Clazz)in.readObject();
            clazz.needsCompile = true;
            ioTime += System.currentTimeMillis() - time;
        }
        classes.put(name, clazz);
        
        return clazz;
    }
    
    private static void transpile() throws Exception {
        String version = System.getProperty("java.version");        
        if(!version.startsWith("1.8")) throw new RuntimeException("Cava requires JDK 1.8");
        
        classes = new HashMap();
        stringCollector = new StringCollector();
        
        File buildDir = CavaOptions.buildDir();
        platformBuildDir = new File(buildDir, CavaOptions.targetPlatform().name());
        platformBuildDir.mkdirs();
        new File(platformBuildDir, "generated").mkdirs();
        classCacheDir = new File(buildDir,"classcache");
        classCacheDir.mkdirs();
        
        long time = System.currentTimeMillis();
        //todo: new DependencyAnalyzer().analyze(CavaOptions.mainClass());
        time = System.currentTimeMillis() - time;
        System.out.println("Dependency: "+time);
        //new JSBackend().generate();
        //new CBackend().generate();
        
        final int[] stat = new int[5];
        classes.values().forEach(c -> {
            c.methods.forEach(m -> {
                if(m.usedInProject) {
                    stat[0]++;
                    if(!m.isStatic() && !m.isAbstract() && !m.isNative()) {
                        stat[1]++;
                        if(m.virtualBaseClass == null) stat[2]++;
                    }
                }
            });
        });
        
        System.out.println(stat[0]+" methods "+stat[1]+" virtual "+stat[2]+" devirtualized");
        System.out.println("decompile="+decompileTime+" io="+ioTime);        
    }
    /*
    public static void generate() throws Exception {
        transpile();
        Project project = CavaOptions.targetPlatform().createProject();
        project.generate();
    }

    public static void build() throws Exception {
        transpile();
        Project project = CavaOptions.targetPlatform().createProject();
        project.generate();
        project.build();
    }

    public static void run() throws Exception {
        transpile();
        Project project = CavaOptions.targetPlatform().createProject();
        project.generate();
        project.build();
        project.run();
    }
    */

    public static HashSet<File> generatedSourceFiles = new HashSet();
    public static void saveCode(String fileName, String code) throws Exception {
        saveCode(fileName, "generated", code);
    }

    public static void saveCode(String fileName, String path, String code) throws Exception {
        File f = new File(new File(platformBuildDir, path), fileName);
        generatedSourceFiles.add(f);
        byte[] newBytes = code.getBytes();
        if(f.exists()) {
            int len = (int)f.length();
            byte[] bytes = new byte[len];
            new FileInputStream(f).read(bytes);
            if(Arrays.equals(bytes, newBytes)) return;
        }
        f.getParentFile().mkdirs();
        new FileOutputStream(f).write(code.getBytes());
    }
    
}

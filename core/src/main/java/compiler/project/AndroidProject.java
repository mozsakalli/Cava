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

package compiler.project;

import compiler.CavaOptions;
import compiler.CompilerContext;
import compiler.DecompilerUtils;
import compiler.backend.SourceWriter;
import compiler.util.FileUtil;
import java.io.File;
import java.io.FileOutputStream;

/**
 *
 * @author mustafa
 */
public class AndroidProject extends Project {

    //File sourceRootDir;
    
    @Override
    public void generate() throws Exception {
        copyCavaFiles(new File(CompilerContext.platformBuildDir, "cava"));
        generateCMake();
        generateAndroidActivity();
        AndroidManifest.generate();
        generateTopLevelGradle();
        Gradle.generate();
        FileUtil.extractZip(CompilerContext.platformBuildDir, getClass().getResourceAsStream("/com/cava/gradle.zip"));
    }
    
    void generateCMake() throws Exception {
        SourceWriter out = new SourceWriter()
          .println("cmake_minimum_required(VERSION 3.4.1)");
        
        out.println("include_directories(").indent()
           .println(new File(CompilerContext.platformBuildDir, "cava").getAbsolutePath())
           .println(new File(CompilerContext.platformBuildDir, "generated").getAbsolutePath())
           .undent().println(")");
        
        out.println("add_library(").indent().println("project SHARED")
           .println(new File(CompilerContext.platformBuildDir,"cava/jvm.c").getAbsolutePath());
        
        for(File file : CompilerContext.generatedSourceFiles) {
            if(file.getName().endsWith(".c") || file.getName().endsWith(".cpp"))
                out.println(file.getAbsolutePath());
        }
        out.undent().println(")").ln()
           .println("target_link_libraries(").indent()
           .println("project")
           .println("android")
           .println("log")
           .println(new File(CompilerContext.platformBuildDir,"cava/lib/Android/${CMAKE_ANDROID_ARCH_ABI}/libgc.a").getAbsolutePath())
           .undent().println(")");
        
        new FileOutputStream(new File(CompilerContext.platformBuildDir,"CMakeLists.txt")).write(out.toString().getBytes());
    }
    
    void generateAndroidActivity() throws Exception {
        String fullName = CavaOptions.mainClass().replace(".", "/");
        String pkg = DecompilerUtils.packageName(fullName);
        String name = DecompilerUtils.simpleName(fullName);
        SourceWriter out = new SourceWriter();
        out.println("package %s;", pkg.replace('/', '.')).ln()
           .println("import android.app.*;")
           .println("import android.os.*;").ln()
           .println("public class %s extends Activity {", name).indent()
           .println("@Override public void onCreate(Bundle savedInstance) {").indent()
           .undent().println("}")
           .undent().println("}");
                   
        CompilerContext.saveCode(fullName+".java", "app/src/main/java", out.toString());
    }
    
    final static String TOPLEVEL_GRADLE = 
        "buildscript {\n" +
    "    repositories {\n" +
    "        google()\n" +
    "        jcenter()\n" +
    "    }\n" +
    "    dependencies {\n" +
    "        classpath 'com.android.tools.build:gradle:3.3.1'\n" +
    "    }\n" +
    "}\n" +
    "\n" +
    "allprojects {\n" +
    "    repositories {\n" +
    "        google()\n" +
    "        jcenter()\n" +
    "    }\n" +
    "}\n" +
    "\n" +
    "task clean(type: Delete) {\n" +
    "    delete rootProject.buildDir\n" +
    "}";
    void generateTopLevelGradle() throws Exception {
        CompilerContext.saveCode("build.gradle","", TOPLEVEL_GRADLE);
        CompilerContext.saveCode("gradle.properties", "", "org.gradle.jvmargs=-Xmx1536m");
        CompilerContext.saveCode("settings.gradle", "", "include ':app'");
    }

    @Override
    public void build() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void run() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void terminate() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}

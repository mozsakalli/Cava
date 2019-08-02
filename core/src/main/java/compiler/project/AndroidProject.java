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

import compiler.CompilerContext;
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
    }
    
    void generateCMake() throws Exception {
        SourceWriter out = new SourceWriter()
          .println("cmake_minimum_required(VERSION 3.4.1)");
        
        out.println("include_directories(").indent()
           .println(new File(CompilerContext.platformBuildDir, "cava").getAbsolutePath())
           .undent().println(")");
        
        out.println("add_library(").indent().println("project SHARED");
        for(File file : CompilerContext.generatedSourceFiles) {
            if(file.getName().endsWith(".c") || file.getName().endsWith(".cpp"))
                out.println(file.getAbsolutePath());
        }
        out.undent().println(")").ln()
           .println("target_link_libraries(").indent()
           .println("project")
           .println("android")
           .println("log")
           .undent().println(")");
        
        new FileOutputStream(new File(CompilerContext.platformBuildDir,"CMakeLists.txt")).write(out.toString().getBytes());
    }
}

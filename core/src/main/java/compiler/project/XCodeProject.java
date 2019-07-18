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
import compiler.backend.SourceWriter;
import compiler.project.xcode.PBXProject;
import java.io.File;
import java.io.FileOutputStream;
import java.util.jar.JarInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import sun.tools.jar.resources.jar;

/**
 *
 * @author mustafa
 */
public class XCodeProject extends Project {
    
    PBXProject pbxProject;
    File projectDir;
    
    final static String GROUP_GENERATED = "generated";
    
    public void build() throws Exception {
        projectDir = new File(CompilerContext.platformBuildDir,"project.xcodeproj");
        projectDir.mkdirs();
        pbxProject = new PBXProject(this);
        
        for(File file : CompilerContext.generatedSourceFiles) {
            pbxProject.addSourceFile(GROUP_GENERATED, file);
        }
        
        copyCavaFiles();
        
        pbxProject.addSourceFile("cava", new File(CompilerContext.platformBuildDir, "cava/jvm.c"));
        pbxProject.addSourceFile("cava", new File(CompilerContext.platformBuildDir, "cava/jvm.h"));
        

        pbxProject.addStaticLibrary("gc", 
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/arm64"),
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/thumbv7"),
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/x86_64"),
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/x86"));
        
        SourceWriter out = new SourceWriter();
        pbxProject.export(out);
        
        new FileOutputStream(new File(projectDir,"project.pbxproj")).write(out.toString().getBytes());
    }
    
    public File getProjectDir() {
        return projectDir;
    }
    
    public String getIosSdk() {
        return CavaOptions.getStr("ios-sdk", "8.0");
    }
    
    void copyCavaFiles() throws Exception {
        File root = new File(CompilerContext.platformBuildDir, "cava");
        if(!root.exists()) {
            ZipInputStream zip = new JarInputStream(getClass().getResourceAsStream("/com/cava/native.zip"));
            ZipEntry entry = zip.getNextEntry();
            byte[] buffer = new byte[8192];
            while(entry != null) {
                if(!entry.isDirectory()) {
                    File dest = new File(root, entry.getName());
                    dest.getParentFile().mkdirs();
                    FileOutputStream out = new FileOutputStream(dest);
                    int len = (int)entry.getSize();
                    int ptr = 0;
                    while(ptr < len) {
                        int readed = zip.read(buffer, 0, Math.min(len - ptr, buffer.length));
                        out.write(buffer, 0, readed);
                        ptr += readed;
                    }
                    out.close();
                }
                entry = zip.getNextEntry();
            }
        }
    }
    
}

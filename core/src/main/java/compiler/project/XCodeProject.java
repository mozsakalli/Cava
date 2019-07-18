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

import compiler.util.FileUtil;
import compiler.CavaOptions;
import compiler.CompilerContext;
import compiler.backend.SourceWriter;
import compiler.project.xcode.PBXProject;
import java.io.File;
import java.io.FileOutputStream;

/**
 *
 * @author mustafa
 */
public class XCodeProject extends Project {
    
    PBXProject pbxProject;
    File projectDir;
    File infoPList;
    
    final static String GROUP_GENERATED = "generated";
    
    public void build() throws Exception {
        infoPList = CavaOptions.getFile("info-plist");
        if(infoPList == null || !infoPList.exists())
            throw new RuntimeException("Info.plist file missing at "+infoPList);
        projectDir = new File(CompilerContext.platformBuildDir,"project.xcodeproj");
        projectDir.mkdirs();
        pbxProject = new PBXProject(this);
        
        for(File file : CompilerContext.generatedSourceFiles) {
            pbxProject.addSourceFile(GROUP_GENERATED, file);
        }
        
        pbxProject.addSourceFile("cava", new File("/Users/mustafa/Work/experimental/cava/compiler/core/jvm.c"));
        pbxProject.addSourceFile("cava", new File("/Users/mustafa/Work/experimental/cava/compiler/core/jvm.h"));
        
        pbxProject.addStaticLibrary("gc", 
                new File("/Users/mustafa/Work/experimental/cava/compiler/core/lib/ios/arm64"),
                new File("/Users/mustafa/Work/experimental/cava/compiler/core/lib/ios/thumbv7"),
                new File("/Users/mustafa/Work/experimental/cava/compiler/core/lib/ios/x86_64"),
                new File("/Users/mustafa/Work/experimental/cava/compiler/core/lib/ios/x86"));
        
        SourceWriter out = new SourceWriter();
        pbxProject.export(out);
        
        new FileOutputStream(new File(projectDir,"project.pbxproj")).write(out.toString().getBytes());
    }
    
    public File getProjectDir() {
        return projectDir;
    }
    
    public File getInfoPList() {
        return infoPList;
    }
    
    public String getIosSdk() {
        return CavaOptions.get("ios-sdk", "8.0");
    }
    
    void copyCavaFiles() throws Exception {
        String root = "/Users/mustafa/Work/experimental/cava/core/compiler";
        FileUtil.copyFile(new File(root+"/jvm.h"), new File(CompilerContext.platformBuildDir,"generated"));
        FileUtil.copyFile(new File(root+"/jvm.c"), new File(CompilerContext.platformBuildDir,"generated"));
    }
    
}

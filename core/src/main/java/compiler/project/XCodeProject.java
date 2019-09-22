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
import compiler.backend.c.A;
import compiler.model.Clazz;
import compiler.project.xcode.PBXProject;
import compiler.util.FileUtil;
import compiler.util.IosDevice;
import compiler.util.XCodeUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class XCodeProject extends Project {
    
    PBXProject pbxProject;
    File projectDir;
    
    final static String GROUP_GENERATED = "generated";
    
    public XCodeProject() {
        projectDir = new File(CompilerContext.platformBuildDir,"project.xcodeproj");
    }
    @Override
    public void generate() throws Exception {
        projectDir.mkdirs();
        pbxProject = new PBXProject(this);
        
        for(File file : CompilerContext.generatedSourceFiles) {
            pbxProject.addSourceFile(GROUP_GENERATED, file);
        }
        
        copyCavaFiles(new File(CompilerContext.platformBuildDir, "cava"));
        
        pbxProject.addSourceFile("cava", new File(CompilerContext.platformBuildDir, "cava/jvm.c"));
        pbxProject.addSourceFile("cava", new File(CompilerContext.platformBuildDir, "cava/jvm.h"));
        
        if(CavaOptions.debug()) {
            File file = new File(CompilerContext.platformBuildDir,"generated/debug_settings.c");
            String code = "char* JVM_DEBUG_HOST=\"" + CavaOptions.debugHost() + "\";\n" +
                          "int JVM_DEBUG_PORT=" + CavaOptions.debugPort() + ";\n";
            FileOutputStream out = new FileOutputStream(file);
            out.write(code.getBytes());
            out.close();
            pbxProject.addSourceFile(GROUP_GENERATED, file);
        }
        for(String lib : new String[]{"gc"})
        pbxProject.addStaticLibrary(lib, 
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/arm64"),
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/thumbv7"),
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/x86_64"),
                new File(CompilerContext.platformBuildDir,"cava/lib/ios/x86"));

        
        addRequiredFrameworks();
        /*
        pbxProject.addAssetFile("", new File(CompilerContext.platformBuildDir, "bucket.png"));
        pbxProject.addAssetFile("", new File(CompilerContext.platformBuildDir, "droplet.png"));
        pbxProject.addAssetFile("", new File(CompilerContext.platformBuildDir, "wabbit_alpha.png"));
        pbxProject.addAssetFile("", new File(CompilerContext.platformBuildDir, "com"));
        //pbxProject.addResourceFile("", new File(CompilerContext.platformBuildDir, "assets"));
        */
        
        SourceWriter out = new SourceWriter();
        pbxProject.export(out);
        
        new FileOutputStream(new File(projectDir,"project.pbxproj")).write(out.toString().getBytes());
        
    }
    
    void addRequiredFrameworks() throws Exception {
        Set<String> usedFrameworks = new HashSet();
        Set<String> usedResources = new HashSet();
        
        for(Clazz clazz : CompilerContext.classes.values()) {
            String framework = A.framework(clazz);
            if(framework != null && !framework.isEmpty() && !usedFrameworks.contains(framework)) {
                usedFrameworks.add(framework);
                pbxProject.addFramework(framework, null);
            }
            
            Map<String, Object> map = A.get(clazz, A.Resource);
            if(map != null && !map.isEmpty()) {
                Object[] resources = (Object[])map.get("value");
                for(Object res : resources) {
                    String path = res.toString();
                    if(!path.isEmpty() && !usedResources.contains(path)) {
                        usedResources.add(path);
                        if(!path.startsWith("/")) path = "/" + path;
                        boolean isSourceCode = path.endsWith(".c") || path.endsWith(".cpp")
                                || path.endsWith(".m") || path.endsWith(".mm")
                                || path.endsWith(".h") || path.endsWith(".hpp");
                        if(isSourceCode) {
                            String p = path;
                            if(p.startsWith("/")) p = p.substring(1);
                            File dest = new File(CompilerContext.platformBuildDir, "generated/"+p);
                            try {
                                FileUtil.copyFile(getClass().getResourceAsStream(path), dest);
                            } catch(Exception e){
                                throw new RuntimeException("Error while copying file: "+path);
                            }
                            pbxProject.addSourceFile(path, dest);
                        } else {
                            //add as asset
                            String p = path;
                            if(p.startsWith("/")) p = p.substring(1);
                            File dest = new File(CompilerContext.platformBuildDir, "other/"+p);
                            InputStream in = getClass().getResourceAsStream(path);
                            if(in == null) {
                                for(File file : CompilerContext.classPath) {
                                    if(file.isDirectory()) {
                                        File f = new File(file, p);
                                        if(f.exists()) {
                                            in = new FileInputStream(f);
                                            break;
                                        }
                                    }
                                }
                                //File file = new File("target/classes/"+p);
                                if(in == null) throw new RuntimeException("Can't find resource: "+path);
                            }
                            FileUtil.copyFile(in, dest);
                            pbxProject.addAssetFile("", dest);
                        }
                    }
                }
            }
        }
            
    }
    
    public File getProjectDir() {
        return projectDir;
    }
    
    public String getIosSdk() {
        return CavaOptions.getStr("ios-sdk", "8.0");
    }
    
    @Override
    public void build() throws Exception {
        XCodeUtil.build(projectDir, CavaOptions.applicationName(), CavaOptions.simulator());
        File appFile = XCodeUtil.getApplicationFile(projectDir, CavaOptions.applicationName());
        System.out.println("Generated: "+appFile);
    }
    
    @Override
    public void run() throws Exception {
        List<IosDevice> devices = XCodeUtil.getSimulators();
        IosDevice device = null;
        String simulatorId = CavaOptions.simulatorId();
        if(simulatorId != null) 
            device = devices.stream().filter(d -> d.id().equals(simulatorId)).findFirst().orElse(null);
        //IosDevice device = devices.stream().filter(d -> d.status() == IosDevice.Status.Booted).findFirst().orElse(null);
        if(device == null) {
            for(IosDevice d : devices) {
                if(!d.name().equals("iPhone 5")) {
                    device = d;
                    break;
                }
            }
        }
        if(device.status() != IosDevice.Status.Booted)
            XCodeUtil.launchSimulator(device);
        
        XCodeUtil.installApplicationOnSimulator(device, projectDir, CavaOptions.applicationName());
        XCodeUtil.runOnSimulator(device, CavaOptions.applicationId());
    }

    @Override
    public void terminate() throws Exception {
        String simulatorId = CavaOptions.simulatorId();
        if(simulatorId == null) return;
        List<IosDevice> devices = XCodeUtil.getSimulators();
        IosDevice device = devices.stream().filter(d -> d.id().equals(simulatorId)).findFirst().orElse(null);
        if(device == null) return;
        XCodeUtil.terminateOnSimulator(device, CavaOptions.applicationId());
    }
    
    
}

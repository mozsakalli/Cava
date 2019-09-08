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
package com.cava.maven;

import compiler.CavaOptions;
import compiler.CompilerContext;
import compiler.util.Executor;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.maven.artifact.Artifact;
import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugin.MojoFailureException;
import org.apache.maven.plugins.annotations.Component;
import org.apache.maven.plugins.annotations.LifecyclePhase;
import org.apache.maven.plugins.annotations.Mojo;
import org.apache.maven.plugins.annotations.Parameter;
import org.apache.maven.plugins.annotations.ResolutionScope;
import org.apache.maven.project.MavenProject;

/**
 *
 * @author mustafa
 */
@Mojo(name = "compile", defaultPhase = LifecyclePhase.PROCESS_CLASSES, requiresDependencyResolution = ResolutionScope.COMPILE_PLUS_RUNTIME,
    requiresDependencyCollection = ResolutionScope.COMPILE_PLUS_RUNTIME)
public class CavaMavenMojo extends AbstractMojo {

    @Parameter(defaultValue = "${project.build.outputDirectory}")
    protected File classFiles;

    @Component
    protected MavenProject project;

    @Parameter(property = "cava.appName", required = true)
    protected String applicationName;
        
    @Parameter(property = "cava.mainClass", required = true)
    protected String mainClass;

    @Parameter(property = "cava.platform", required = true) 
    protected String platform;
    
    @Parameter(property = "cava.buildDir")
    protected File buildDir;
    
    @Parameter(property = "cava.debug")
    protected boolean debug;

    @Parameter(property = "cava.debugPort", defaultValue = "10000")
    protected int debugPort;
    
    @Parameter(property = "cava.debugHost", defaultValue = "127.0.0.1")
    protected String debugHost;

    @Parameter(property = "cava.infoPList")
    protected File infoPList;
    
    @Parameter(property = "cava.simulator", defaultValue = "true")
    protected boolean simulator;
    
    @Override
    public void execute() throws MojoExecutionException, MojoFailureException {
        try {
            CavaOptions.targetPlatform(platform);
            CavaOptions.applicationName(applicationName);
            CavaOptions.mainClass(mainClass);
            if(buildDir != null)
                CavaOptions.buildDir(buildDir);
            switch(platform) {
                case "iOS":
                    if(infoPList == null || !infoPList.exists()) throw new RuntimeException("Info.plist file missing");
                    CavaOptions.infoPList(infoPList);
                    break;
                    
            }
            CavaOptions.simulator(simulator);
            CavaOptions.debug(debug);
            CavaOptions.debugPort(debugPort);
            CavaOptions.debugHost(debugHost);
            
            prepareClassPath();
            CompilerContext.generate();
            
            switch(platform) {
                case "iOS":
                    new Executor("open").args(new File(CavaOptions.buildDir(), "iOS/project.xcodeproj")).exec();
                    break;
            }
            
        } catch (Exception problem) {
            throw new MojoExecutionException("Error compiling Cava "+platform+" Project", problem);
        }
    }

    boolean isSupportedScope(final String scope) {
        switch (scope) {
            case Artifact.SCOPE_COMPILE:
            case Artifact.SCOPE_PROVIDED:
            case Artifact.SCOPE_SYSTEM:
                return true;
            default:
                return false;
        }
    }

    void prepareClassPath() {
        List<File> classPath = new ArrayList();
        if(classFiles != null) {
            classPath.add(classFiles);
        }
        for (Artifact artifact : project.getArtifacts()) {
            if (!isSupportedScope(artifact.getScope())) {
                continue;
            }
            final File file = artifact.getFile();
            classPath.add(file);
        }
        
        CompilerContext.classPath = classPath.toArray(new File[classPath.size()]);
    }
}

package com.cava.idea.compilation;

import com.cava.idea.CavaPlugin;
import com.cava.idea.running.CavaRunConfiguration;
import com.intellij.compiler.options.CompileStepBeforeRun;
import com.intellij.execution.configurations.RunConfiguration;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.compiler.CompileContext;
import com.intellij.openapi.compiler.CompileTask;
import com.intellij.openapi.compiler.CompilerMessageCategory;
import com.intellij.openapi.compiler.CompilerPaths;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleManager;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.roots.ModuleRootManager;
import com.intellij.openapi.roots.OrderEnumerator;
import com.intellij.openapi.ui.MessageType;
import com.intellij.openapi.util.Computable;
import compiler.CavaOptions;
import compiler.CompilerContext;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class CavaCompileTask implements CompileTask {

    @Override
    public boolean execute(CompileContext context) {
        if(context.getMessageCount(CompilerMessageCategory.ERROR) > 0) {
            CavaPlugin.logError(context.getProject(), "Can't compile application due to previous compilation errors");
            return false;
        }

        RunConfiguration c = context.getCompileScope().getUserData(CompileStepBeforeRun.RUN_CONFIGURATION);
        if(c == null || !(c instanceof CavaRunConfiguration)) {
            /*
            CreateIpaAction.IpaConfig ipaConfig = context.getCompileScope().getUserData(CreateIpaAction.IPA_CONFIG_KEY);
            if(ipaConfig != null) {
                return compileForIpa(context, ipaConfig);
            }

            CreateFrameworkAction.FrameworkConfig frameworkConfig = context.getCompileScope().getUserData(CreateFrameworkAction.FRAMEWORK_CONFIG_KEY);
            if (frameworkConfig != null) {
                return compileForFramework(context, frameworkConfig);
            }

            return true;*/
        } else {
            return compileForRunConfiguration(context, (CavaRunConfiguration)c);
        }

        return false;
    }

    private boolean compileForRunConfiguration(CompileContext context, final CavaRunConfiguration runConfig) {
        try {
            ProgressIndicator progress = context.getProgressIndicator();
            context.getProgressIndicator().pushState();
            CavaPlugin.focusToolWindow(context.getProject());
            progress.setText("Compiling Cava app");

            // get the module we are about to compile
            ModuleManager moduleManager = ModuleManager.getInstance(runConfig.getProject());
            Module module = ApplicationManager.getApplication().runReadAction(new Computable<Module>() {
                @Override
                public Module compute() {
                    return ModuleManager.getInstance(runConfig.getProject()).findModuleByName(runConfig.getModuleName());
                }
            });
            if(module == null) {
                CavaPlugin.logBalloon(context.getProject(), MessageType.ERROR, "Couldn't find Module '" + runConfig.getModuleName() + "'");
                return false;
            }
            File moduleBaseDir = CavaPlugin.getModuleBaseDir(module);

            configureClassAndSourcepaths(context, module);

            CavaPlugin.loadCavaProperties(moduleBaseDir);
            CavaOptions.buildDir(new File(moduleBaseDir, "cava-build"));
            CavaOptions.targetPlatform(runConfig.getTargetPlatform().toString());
            CavaOptions.infoPList(new File(moduleBaseDir, "Info.plist"));
            CavaOptions.simulator(runConfig.isSimulator());
            CavaOptions.simulatorId(runConfig.getSimulatorId());
            CavaOptions.debug(runConfig.isDebug);
            CavaOptions.debugHost("192.168.1.40");

            CavaPlugin.logInfo(module.getProject(), "Compiling %s", runConfig.isDebug ? "DEBUG" : "RELEASE");
            /*
            // load the robovm.xml file
            loadConfig(context.getProject(), builder, moduleBaseDir, false);

            // set OS and arch
            OS os = null;
            Arch arch = null;
            if(runConfig.getTargetType() == RoboVmRunConfiguration.TargetType.Device) {
                os = OS.ios;
                arch = runConfig.getDeviceArch();
            } else if(runConfig.getTargetType() == RoboVmRunConfiguration.TargetType.Simulator) {
                os = OS.ios;
                arch = runConfig.getSimArch();
            } else {
                os = OS.getDefaultOS();
                arch = Arch.getDefaultArch();
            }
            builder.os(os);
            builder.arch(arch);

            // set the plugin args
            List<String> args = splitArgs(runConfig.getArguments());
            applyPluginArguments(args, builder);

            // set build dir and install dir, pattern
            // module-basedir/robovm-build/tmp/module-name/runconfig-name/os/arch.
            // module-basedir/robovm-build/app/module-name/runconfig-name/os/arch.
            File buildDir = RoboVmPlugin.getModuleBuildDir(module, runConfig.getName(), os, arch);
            builder.tmpDir(buildDir);
            builder.skipInstall(true);
            RoboVmPlugin.logInfo(context.getProject(), "Building executable in %s", buildDir.getAbsolutePath());
            RoboVmPlugin.logInfo(context.getProject(), "Installation of app in %s", buildDir.getAbsolutePath());

            // setup classpath entries, debug build parameters and target
            // parameters, e.g. signing identity etc.
            configureClassAndSourcepaths(context, builder, module);
            configureDebugging(builder, runConfig, module);
            configureTarget(builder, runConfig);

            // clean build dir
            RoboVmPlugin.logInfo(context.getProject(), "Cleaning output dir " + buildDir.getAbsolutePath());
            FileUtils.deleteDirectory(buildDir);
            buildDir.mkdirs();

            // Set the Home to be used, create the Config and AppCompiler
            Config.Home home = RoboVmPlugin.getRoboVmHome();
            if(home.isDev()) {
                builder.useDebugLibs(true);
                builder.dumpIntermediates(true);
                builder.addPluginArgument("debug:logconsole=true");
            }
            builder.home(home);

            // mark that prepare for launch was done already performed and no need to do it during launch
            // this is required to unfreeze IDEA as prepareForLaunch is called in blocking manner that is
            // against contract
            builder.manuallyPreparedForLaunch(true);

            Config config = builder.build();
            AppCompiler compiler = new AppCompiler(config);
            */
            if(progress.isCanceled()) {
                CavaPlugin.logInfo(context.getProject(), "Build canceled");
                return false;
            }

            progress.setFraction(0.5);

            // Start the build in a separate thread, check if
            // user canceled it.
            CavaCompilerThread thread = new CavaCompilerThread(progress) {
                protected void doCompile() throws Exception {
                    super.doCompile();
                    /*
                    // perform prepare for launch here, as doing this in lauch task will block UI due bad design
                    if (config.getTarget().canLaunch()) {
                        long start = System.currentTimeMillis();
                        config.getTarget().prepareLaunch();
                        long duration = System.currentTimeMillis() - start;
                        config.getLogger().info("Prepared for launch in %.2f seconds", duration / 1000.0);
                    }*/
                }
            };
            thread.compile();
            if(progress.isCanceled()) {
                CavaPlugin.logInfo(context.getProject(), "Build canceled");
                return false;
            }
            CavaPlugin.logInfo(context.getProject(), "Build done");

            /*
            // set the config and compiler on the run configuration so
            // it knows where to find things.
            runConfig.setConfig(config);
            runConfig.setCompiler(compiler);
            runConfig.setProgramArguments(args);
             */
        } catch(Throwable t) {
            CavaPlugin.logErrorThrowable(context.getProject(), "Couldn't compile app", t, false);
            return false;
        } finally {
            context.getProgressIndicator().popState();
        }
        return true;
    }

    private void configureClassAndSourcepaths(CompileContext context, Module module) {
        OrderEnumerator classes = ModuleRootManager.getInstance(module).orderEntries().recursively().withoutSdk().compileOnly().productionOnly();
        Set<File> classPaths = new HashSet<File>();
        Set<File> bootClassPaths = new HashSet<File>();
        for(String path: classes.getPathsList().getPathList()) {
            if(!CavaPlugin.isSdkLibrary(path)) {
                File file = new File(path);
                if(file.exists())
                    classPaths.add(file);
            }
        }

        // add the output dirs of all affected modules to the
        // classpath. IDEA will make the output directory
        // of a module an order entry after the first compile
        // so we add the path twice. Fixed by using a set.
        // FIXME junit needs to include test output directories
        for(Module mod: context.getCompileScope().getAffectedModules()) {
            String path = CompilerPaths.getModuleOutputPath(mod, false);
            if(path != null && !path.isEmpty()) {
                File file = new File(path);
                if(file.exists())
                    classPaths.add(file);
            } else {
                CavaPlugin.logWarn(context.getProject(), "Output path of module %s not defined", mod.getName());
            }
        }

        // set the user classpath entries
        for(File path: classPaths) {
            CavaPlugin.logInfo(context.getProject(), "classpath entry: %s", path.getAbsolutePath());
            classPaths.add(path);
        }

        // Use the RT from the SDK
        CavaPlugin.logInfo(context.getProject(), "Using SDK boot classpath");
        List<File> all = new ArrayList();
        all.addAll(CavaPlugin.getSdkLibraries());
        all.addAll(classPaths);

        CompilerContext.classPath = all.toArray(new File[all.size()]);
    }
}

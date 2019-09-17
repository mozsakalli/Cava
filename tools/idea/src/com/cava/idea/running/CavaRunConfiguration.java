package com.cava.idea.running;

import com.cava.idea.CavaPlugin;
import com.intellij.execution.ExecutionException;
import com.intellij.execution.Executor;
import com.intellij.execution.configurations.*;
import com.intellij.execution.runners.ExecutionEnvironment;
import com.intellij.execution.runners.RunConfigurationWithSuppressedDefaultRunAction;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleManager;
import com.intellij.openapi.options.SettingsEditor;
import com.intellij.openapi.util.InvalidDataException;
import com.intellij.openapi.util.JDOMExternalizerUtil;
import com.intellij.openapi.util.WriteExternalException;
import compiler.Platform;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Collection;
import java.util.List;

public class CavaRunConfiguration extends ModuleBasedConfiguration<CavaRunConfigurationSettings,ConfigurationType> implements RunConfigurationWithSuppressedDefaultDebugAction, RunConfigurationWithSuppressedDefaultRunAction, RunProfileWithCompileBeforeLaunchOption {

    private String moduleName;
    private ConfigurationType type;
    private Platform targetPlatform;
    private String simulatorId;
    private boolean simulator;

    public CavaRunConfiguration(ConfigurationType type, String name, CavaRunConfigurationSettings configurationModule, ConfigurationFactory factory) {
        super(name, configurationModule, factory);
        this.type = type;
    }

    @Override
    public ModuleBasedConfiguration clone() {
        return super.clone();
    }

    @Override
    public Collection<Module> getValidModules() {
        return CavaPlugin.getCavaModules(getConfigurationModule().getProject());
    }

    @NotNull
    @Override
    public SettingsEditor<? extends RunConfiguration> getConfigurationEditor() {
        if(type instanceof CavaIosConfigurationType) {
            return new CavaIosRunConfigurationSettingsEditor();
        }
        return null;
    }

    @Nullable
    @Override
    public RunProfileState getState(@NotNull Executor executor, @NotNull ExecutionEnvironment environment) throws ExecutionException {
        return new CavaRunProfileState(environment);
    }

    @Override
    public void readExternal(Element element) throws InvalidDataException {
        super.readExternal(element);

        readModule(element);

        moduleName = JDOMExternalizerUtil.readField(element, "moduleName");
        String str = JDOMExternalizerUtil.readField(element, "targetPlatform");
        targetPlatform = str != null && str.length() > 0 ? Platform.valueOf(str) : null;
        simulatorId = JDOMExternalizerUtil.readField(element, "simulatorId");
        str = JDOMExternalizerUtil.readField(element, "simulator");
        simulator = str != null && str.equals("true");
        /*
        String targetTypeStr = JDOMExternalizerUtil.readField(element, "targetType");
        targetType = targetTypeStr.length() == 0? null: TargetType.valueOf(targetTypeStr);
        String deviceArchStr = JDOMExternalizerUtil.readField(element, "deviceArch");
        deviceArch = deviceArchStr.length() == 0? null: Arch.valueOf(deviceArchStr);
        signingIdentity = JDOMExternalizerUtil.readField(element, "signingIdentity");
        provisioningProfile = JDOMExternalizerUtil.readField(element, "provisioningProfile");
        String simArchStr = JDOMExternalizerUtil.readField(element, "simArch");
        simArch = simArchStr.length() == 0? null: Arch.valueOf(simArchStr);
        simulatorName = JDOMExternalizerUtil.readField(element, "simulatorName");
        String simSdkString = JDOMExternalizerUtil.readField(element, "simulatorSdk");
        simulatorSdk = -1;
        try {
            if (simSdkString != null)
                simulatorSdk = Integer.parseInt(simSdkString);
        } catch (Throwable ignored) {
        }
        arguments = JDOMExternalizerUtil.readField(element, "arguments");
        if(arguments == null) arguments = "";
        workingDir = JDOMExternalizerUtil.readField(element, "workingDir");
        if(workingDir == null) workingDir = "";
         */
    }

    @Override
    public void writeExternal(Element element) throws WriteExternalException {
        super.writeExternal(element);

        setModuleName(moduleName);
        writeModule(element);

        JDOMExternalizerUtil.writeField(element, "moduleName", moduleName);
        JDOMExternalizerUtil.writeField(element, "targetPlatform", targetPlatform == null ? null : targetPlatform.toString());
        JDOMExternalizerUtil.writeField(element, "simulatorId", simulatorId == null ? null : simulatorId);
        JDOMExternalizerUtil.writeField(element, "simulator", String.valueOf(simulator));
        /*
        JDOMExternalizerUtil.writeField(element, "targetType", targetType == null? null: targetType.toString());
        JDOMExternalizerUtil.writeField(element, "deviceArch", deviceArch == null? null: deviceArch.toString());
        JDOMExternalizerUtil.writeField(element, "signingIdentity", signingIdentity);
        JDOMExternalizerUtil.writeField(element, "provisioningProfile", provisioningProfile);
        JDOMExternalizerUtil.writeField(element, "simArch", simArch == null? null: simArch.toString());
        JDOMExternalizerUtil.writeField(element, "simulatorName", simulatorName);
        JDOMExternalizerUtil.writeField(element, "simulatorSdk", Integer.toString(simulatorSdk));
        JDOMExternalizerUtil.writeField(element, "arguments", arguments == null? "": arguments);
        JDOMExternalizerUtil.writeField(element, "workingDir", workingDir == null? "": workingDir);
         */
    }

    /*
    public void setDeviceArch(Arch deviceArch) {
        this.deviceArch = deviceArch;
    }

    public Arch getDeviceArch() {
        return deviceArch;
    }

    public void setSigningIdentity(String signingIdentity) {
        this.signingIdentity = signingIdentity;
    }

    public String getSigningIdentity() {
        return signingIdentity;
    }

    public void setProvisioningProfile(String provisioningProfile) {
        this.provisioningProfile = provisioningProfile;
    }

    public String getProvisioningProfile() {
        return provisioningProfile;
    }

    public void setSimArch(Arch simArch) {
        this.simArch = simArch;
    }

    public Arch getSimArch() {
        return simArch;
    }

    public void setSimulatorName(String simulatorName) {
        this.simulatorName = simulatorName;
    }

    public String getSimulatorName() {
        return simulatorName;
    }

    public int getSimulatorSdk() {
        return simulatorSdk;
    }

    public void setSimulatorSdk(int simulatorSdk) {
        this.simulatorSdk = simulatorSdk;
    }
    */

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
        for (Module module : ModuleManager.getInstance(getConfigurationModule().getProject()).getModules()) {
            if(module.getName().equals(moduleName)) {
                setModule(module);
                break;
            }
        }
    }


    public String getModuleName() {
        return moduleName;
    }

    public Platform getTargetPlatform() {
        return targetPlatform;
    }

    public void setTargetPlatform(Platform platform) {
        this.targetPlatform = platform;
    }

    public String getSimulatorId() { return simulatorId; }
    public void setSimulatorId(String id) { simulatorId = id; }

    public boolean isSimulator() { return simulator; }
    public void setSimulator(boolean sim) { simulator = sim; }
    /*
    public boolean isDebug() {
        return isDebug;
    }

    public void setDebug(boolean isDebug) {
        this.isDebug = isDebug;
    }

    public Config getConfig() {
        return config;
    }

    public void setConfig(Config config) {
        this.config = config;
    }

    public void setDebugPort(int debugPort) {
        this.debugPort = debugPort;
    }

    public int getDebugPort() {
        return debugPort;
    }

    public void setCompiler(AppCompiler compiler) {
        this.compiler = compiler;
    }

    public AppCompiler getCompiler() {
        return compiler;
    }

    public TargetType getTargetType() {
        return targetType;
    }

    public void setTargetType(TargetType targetType) {
        this.targetType = targetType;
    }

    public String getArguments() {
        return arguments;
    }

    public void setArguments(String arguments) {
        this.arguments = arguments;
    }

    public void setProgramArguments(List<String> programArguments) {
        this.programArguments = programArguments;
    }

    public List<String> getProgramArguments() {
        return programArguments;
    }

    public String getWorkingDir() {
        return workingDir;
    }

    public void setWorkingDir(String workingDir) {
        this.workingDir = workingDir;
    }*/
}

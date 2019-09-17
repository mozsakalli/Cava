package com.cava.idea.running;

import com.intellij.execution.configurations.ConfigurationFactory;
import com.intellij.execution.configurations.ConfigurationType;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public class CavaIosConfigurationType implements ConfigurationType {

    @Override
    public String getDisplayName() {
        return "Cava iOS";
    }

    @Override
    public String getConfigurationTypeDescription() {
        return "A run configuration to test your app on the iOS simulator or an iOS device";
    }

    @Override
    public Icon getIcon() {
        return null;//RoboVmIcons.ROBOVM_SMALL;
    }

    @NotNull
    @Override
    public String getId() {
        return this.getClass().getName();
    }

    @Override
    public ConfigurationFactory[] getConfigurationFactories() {
        return new ConfigurationFactory[] {
                new CavaConfigurationFactory(this)
        };
    }
}

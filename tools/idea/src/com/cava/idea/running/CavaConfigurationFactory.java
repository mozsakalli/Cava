package com.cava.idea.running;

import com.intellij.execution.configurations.ConfigurationFactory;
import com.intellij.execution.configurations.ConfigurationType;
import com.intellij.execution.configurations.RunConfiguration;
import com.intellij.openapi.project.Project;

public class CavaConfigurationFactory extends ConfigurationFactory {

    protected CavaConfigurationFactory(ConfigurationType type) {
        super(type);
    }

    @Override
    public RunConfiguration createTemplateConfiguration(Project project) {
        return new CavaRunConfiguration(getType(), "Cava Run Configuration", new CavaRunConfigurationSettings(project), this);
    }

    @Override
    public boolean isConfigurationSingletonByDefault() {
        return true;
    }

}

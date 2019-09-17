package com.cava.idea.builder;

import com.intellij.ide.util.projectWizard.JavaModuleBuilder;
import com.intellij.ide.util.projectWizard.ModuleBuilder;
import com.intellij.ide.util.projectWizard.WizardContext;
import com.intellij.platform.ProjectTemplate;
import com.intellij.platform.ProjectTemplatesFactory;
import com.intellij.platform.templates.BuilderBasedTemplate;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class CavaTemplatesFactory extends ProjectTemplatesFactory {
    @NotNull
    @Override
    public String[] getGroups() {
        return new String[] {"Cava"};
    }

    @Override
    public int getGroupWeight(String group) {
        return JavaModuleBuilder.JAVA_MOBILE_WEIGHT;
    }

    @Override
    public String getParentGroup(String group) {
        return "Java";
    }

    @NotNull
    @Override
    public ProjectTemplate[] createTemplates(@Nullable String s, WizardContext wizardContext) {
        return new ProjectTemplate[] {
            new CavaProjectTemplate("Cava iOS Application","Cava iOS Application", new CavaModuleBuilder("ios")),
            new CavaProjectTemplate("Cava Android Application","Cava Android Application", new CavaModuleBuilder("android")),
        };
    }

    private static class CavaProjectTemplate extends BuilderBasedTemplate {
        private final String name;
        private final String description;

        public CavaProjectTemplate(String name, String description, ModuleBuilder builder) {
            super(builder);
            this.name = name;
            this.description = description;
        }

        @Override
        public String getName() {
            return name;
        }

        @Override
        public String getDescription() {
            return description;
        }
    }
}

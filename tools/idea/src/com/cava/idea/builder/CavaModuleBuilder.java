package com.cava.idea.builder;

import com.cava.idea.CavaPlugin;
import com.cava.idea.CavaSdkType;
import com.intellij.ide.util.projectWizard.JavaModuleBuilder;
import com.intellij.ide.util.projectWizard.ModuleWizardStep;
import com.intellij.ide.util.projectWizard.WizardContext;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleType;
import com.intellij.openapi.module.StdModuleTypes;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.roots.LanguageLevelModuleExtension;
import com.intellij.openapi.roots.ModifiableRootModel;
import com.intellij.openapi.roots.ProjectRootManager;
import com.intellij.openapi.roots.ui.configuration.ModulesProvider;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.pom.java.LanguageLevel;
import org.jetbrains.annotations.Nullable;

public class CavaModuleBuilder extends JavaModuleBuilder {

    String templateName;
    public String appName;
    public String packageName;

    public CavaModuleBuilder(String templateName) {
        this.templateName = templateName;
    }

    @Nullable
    @Override
    public String getBuilderId() {
        return this.getClass().getName() + templateName;
    }

    @Override
    public ModuleType getModuleType() {
        return StdModuleTypes.JAVA;
    }


    @Override
    public ModuleWizardStep[] createWizardSteps(WizardContext wizardContext, ModulesProvider modulesProvider) {
        switch (templateName) {
            case "ios":
                return new ModuleWizardStep[] { new CavaIosAppWizardStep(this) };
        }
        return super.createWizardSteps(wizardContext, modulesProvider);
    }

    @Override
    public void setupRootModel(final ModifiableRootModel modifiableRootModel) throws ConfigurationException {
        CavaSdkType.createSdkIfNotExists();

        ProjectRootManager manager = ProjectRootManager.getInstance(modifiableRootModel.getProject());
        manager.setProjectSdk(CavaPlugin.getSdk());

        //cava supports JDK 1.8
        modifiableRootModel.getModuleExtension(LanguageLevelModuleExtension.class).setLanguageLevel(LanguageLevel.JDK_1_8);

        super.setupRootModel(modifiableRootModel);

        final Project project = modifiableRootModel.getProject();
        final Module module = modifiableRootModel.getModule();
        final VirtualFile contentRootFile = modifiableRootModel.getContentRoots()[0];

    }
}

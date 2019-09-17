package com.cava.idea.builder;

import com.intellij.ide.util.projectWizard.ModuleWizardStep;
import javax.swing.*;

public class CavaIosAppWizardStep extends ModuleWizardStep {

    CavaModuleBuilder builder;
    CavaNewIosAppEditor editor;

    public  CavaIosAppWizardStep(CavaModuleBuilder builder) {
        this.builder = builder;
        editor = new CavaNewIosAppEditor();
    }

    @Override
    public JComponent getComponent() {
        return editor.panel;
    }

    @Override
    public void updateDataModel() {
        builder.appName = editor.appName.getText();
        builder.packageName = editor.packageName.getText();
    }
}

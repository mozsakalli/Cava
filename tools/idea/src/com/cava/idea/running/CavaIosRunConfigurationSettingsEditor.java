package com.cava.idea.running;

import com.cava.idea.CavaPlugin;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.options.SettingsEditor;
import compiler.Platform;
import compiler.util.IosDevice;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class CavaIosRunConfigurationSettingsEditor extends SettingsEditor<CavaRunConfiguration> {

    private JPanel panel;
    private JTabbedPane tabbedPane1;
    private JComboBox module;
    private JRadioButton attachedDeviceRadioButton;
    private JRadioButton simulatorRadioButton;
    private JComboBox simType;
    private JComboBox signingIdentity;
    private JComboBox provisioningProfile;
    private JComboBox simArch;
    private JComboBox deviceArch;
    private JTextArea args;

    @Override
    protected void resetEditorFrom(@NotNull CavaRunConfiguration cavaRunConfiguration) {
        populateControls(cavaRunConfiguration);
    }

    @Override
    protected void applyEditorTo(@NotNull CavaRunConfiguration config) throws ConfigurationException {
        config.setTargetPlatform(Platform.iOS);
        config.setModuleName(module.getSelectedItem() != null ? module.getSelectedItem().toString() : "");
        config.setSimulator(simulatorRadioButton.isSelected());
        IosDevice dev = (IosDevice)simType.getSelectedItem();
        config.setSimulatorId(dev != null ? dev.id() : null);
    }

    @NotNull
    @Override
    protected JComponent createEditor() {
        return panel;
    }

    void populateControls(CavaRunConfiguration config) {
        updateModuleConfig(config);
        updateSimulatorConfig(config);
    }

    private void updateModuleConfig(CavaRunConfiguration config) {
        this.module.removeAllItems();
        List<Module> cavaModules = CavaPlugin.getCavaModules(config.getProject(), null);//IOSTarget.TYPE);
        Collections.sort(cavaModules, new Comparator<Module>() {
            @Override
            public int compare(Module o1, Module o2) {
                return o1.getName().compareTo(o2.getName());
            }
        });
        for (Module module : cavaModules) {
            this.module.addItem(module.getName());
            if (module.getName().equals(config.getModuleName())) {
                this.module.setSelectedIndex(this.module.getItemCount() - 1);
                config.setModule(module);
            }
        }
    }

    void updateSimulatorConfig(CavaRunConfiguration config) {
        simType.removeAllItems();
        simArch.removeAllItems();

        try {
            List<IosDevice> simulators = compiler.util.XCodeUtil.getSimulators();
            for(IosDevice dev : simulators) {
                simType.addItem(dev);
                if(config.getSimulatorId() != null && dev.id().equals(config.getSimulatorId()))
                    simType.setSelectedItem(dev);
            }
        } catch (Exception e) {
            CavaPlugin.logErrorThrowable(config.getProject(), e.getMessage(), e, true);
        }

        if(config.isSimulator()) simulatorRadioButton.setSelected(true);
    }


}

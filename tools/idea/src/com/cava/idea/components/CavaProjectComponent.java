package com.cava.idea.components;

import com.cava.idea.CavaPlugin;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.NotNull;

public class CavaProjectComponent implements ProjectComponent {

    private final Project project;

    public CavaProjectComponent(Project project) {
        this.project = project;
    }

    public void initComponent() {
    }

    public void disposeComponent() {
    }

    @NotNull
    public String getComponentName() {
        return getClass().getName();
    }

    public void projectOpened() {
        CavaPlugin.initializeProject(project);
    }

    public void projectClosed() {
        CavaPlugin.unregisterProject(project);
    }
}

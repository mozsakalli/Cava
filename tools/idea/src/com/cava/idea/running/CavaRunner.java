package com.cava.idea.running;

import com.intellij.execution.configurations.RunProfile;
import com.intellij.execution.runners.GenericProgramRunner;
import org.jetbrains.annotations.NotNull;

public class CavaRunner extends GenericProgramRunner {

    public static final String DEBUG_EXECUTOR = "Debug";
    public static final String RUN_EXECUTOR = "Run";

    @NotNull
    @Override
    public String getRunnerId() {
        return getClass().getName();
    }

    @Override
    public boolean canRun(@NotNull String executorId, @NotNull RunProfile profile) {
        return (executorId.equals(DEBUG_EXECUTOR) || executorId.equals(RUN_EXECUTOR)) && profile instanceof CavaRunConfiguration;
    }
}

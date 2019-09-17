package com.cava.idea.running;

import com.intellij.execution.ExecutionException;
import com.intellij.execution.ExecutionResult;
import com.intellij.execution.configurations.RunProfile;
import com.intellij.execution.configurations.RunProfileState;
import com.intellij.execution.runners.ExecutionEnvironment;
import com.intellij.execution.runners.GenericProgramRunner;
import com.intellij.execution.runners.RunContentBuilder;
import com.intellij.execution.ui.RunContentDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

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

    @Override
    protected void execute(@NotNull ExecutionEnvironment environment, @Nullable Callback callback, @NotNull RunProfileState state) throws ExecutionException {
        CavaRunConfiguration runConfig = (CavaRunConfiguration)environment.getRunnerAndConfigurationSettings().getConfiguration();
        //runConfig.setDebug(DEBUG_EXECUTOR.equals(environment.getExecutor().getId()));
        super.execute(environment, callback, state);
    }

    @Nullable
    @Override
    protected RunContentDescriptor doExecute(@NotNull RunProfileState state, @NotNull ExecutionEnvironment environment) throws ExecutionException {
        if(DEBUG_EXECUTOR.equals(environment.getExecutor().getId())) {
            CavaRunConfiguration runConfig = (CavaRunConfiguration)environment.getRunProfile();
            /*
            RemoteConnection connection = new RemoteConnection(true, "127.0.0.1", "" + runConfig.getDebugPort(), false);
            connection.setServerMode(true);
            return attachVirtualMachine(state, environment, connection, false);
             */
            return null;
        } else {
            ExecutionResult executionResult = state.execute(environment.getExecutor(), this);
            if (executionResult == null) {
                return null;
            }
            return new RunContentBuilder(executionResult, environment).showRunContent(environment.getContentToReuse());
        }
    }
}

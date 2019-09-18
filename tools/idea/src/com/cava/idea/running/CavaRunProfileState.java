package com.cava.idea.running;

import com.cava.idea.CavaPlugin;
import com.intellij.execution.ExecutionException;
import com.intellij.execution.configurations.CommandLineState;
import com.intellij.execution.process.ProcessHandler;
import com.intellij.execution.runners.ExecutionEnvironment;
import org.jetbrains.annotations.NotNull;

public class CavaRunProfileState extends CommandLineState {

    public CavaRunProfileState(ExecutionEnvironment environment) {
        super(environment);
    }

    @NotNull
    @Override
    protected ProcessHandler startProcess() throws ExecutionException {
        try {
            if (getEnvironment().getExecutor().getId().equals(CavaRunner.RUN_EXECUTOR)) {
                return executeRun();
            } else if (getEnvironment().getExecutor().getId().equals(CavaRunner.DEBUG_EXECUTOR)) {
                return executeRun();
            } else {
                throw new ExecutionException("Unsupported executor " + getEnvironment().getExecutor().getId());
            }
        } catch(Throwable t) {
            CavaPlugin.logErrorThrowable(getEnvironment().getProject(), "Couldn't start application", t, true);
            throw new ExecutionException(t);
        }
    }

    protected ProcessHandler executeRun() throws Throwable {
        Process process = null;

        return null;
    }
}

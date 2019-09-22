package com.cava.idea.running;

import com.cava.idea.CavaPlugin;
import com.intellij.execution.ExecutionException;
import com.intellij.execution.configurations.CommandLineState;
import com.intellij.execution.process.ColoredProcessHandler;
import com.intellij.execution.process.OSProcessHandler;
import com.intellij.execution.process.ProcessHandler;
import com.intellij.execution.process.ProcessTerminatedListener;
import com.intellij.execution.runners.ExecutionEnvironment;
import compiler.CavaOptions;
import compiler.CompilerContext;
import org.apache.commons.io.IOUtils;
import org.jetbrains.annotations.NotNull;

import java.io.ByteArrayOutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;

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

        PipedOutputStream out = new PipedOutputStream();
        CavaOptions.outputStream(out);
        PipedInputStream in = new PipedInputStream(out);

        Process process = new CavaLaunchProcess(() -> {
            try {
                CompilerContext.run();
            }catch(Exception e) {
                CavaPlugin.logErrorThrowable(getEnvironment().getProject(), e.getMessage(), e, true);
            }
        }, in);

        final OSProcessHandler processHandler = new ColoredProcessHandler(process, null) {
            @Override
            protected void doDestroyProcess() {
                try {
                    CompilerContext.terminate();
                } catch(Exception e){
                    CavaPlugin.logErrorThrowable(getEnvironment().getProject(), e.getMessage(), e, true);
                }
            }
        };
        ProcessTerminatedListener.attach(processHandler);
        return processHandler;
    }


}

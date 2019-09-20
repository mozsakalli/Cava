package com.cava.idea.running;

import com.intellij.debugger.DebugEnvironment;
import com.intellij.debugger.DebuggerManagerEx;
import com.intellij.debugger.DefaultDebugUIEnvironment;
import com.intellij.debugger.engine.DebugProcessImpl;
import com.intellij.debugger.engine.JavaDebugProcess;
import com.intellij.debugger.impl.DebuggerSession;
import com.intellij.execution.DefaultExecutionResult;
import com.intellij.execution.ExecutionException;
import com.intellij.execution.ExecutionResult;
import com.intellij.execution.configurations.RemoteConnection;
import com.intellij.execution.configurations.RunProfile;
import com.intellij.execution.configurations.RunProfileState;
import com.intellij.execution.runners.ExecutionEnvironment;
import com.intellij.execution.runners.GenericProgramRunner;
import com.intellij.execution.runners.RunContentBuilder;
import com.intellij.execution.ui.RunContentDescriptor;
import com.intellij.xdebugger.XDebugProcess;
import com.intellij.xdebugger.XDebugProcessStarter;
import com.intellij.xdebugger.XDebugSession;
import com.intellij.xdebugger.XDebuggerManager;
import com.intellij.xdebugger.impl.XDebugSessionImpl;
import compiler.CavaOptions;
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
        runConfig.isDebug = DEBUG_EXECUTOR.equals(environment.getExecutor().getId());
        super.execute(environment, callback, state);
    }

    @Nullable
    @Override
    protected RunContentDescriptor doExecute(@NotNull RunProfileState state, @NotNull ExecutionEnvironment environment) throws ExecutionException {
        CavaRunConfiguration runConfig = (CavaRunConfiguration)environment.getRunProfile();

        if(DEBUG_EXECUTOR.equals(environment.getExecutor().getId())) {
            RemoteConnection connection = new RemoteConnection(true, CavaOptions.debugHost(), ""+ CavaOptions.debugPort(), true);
            DebugEnvironment debugEnv = new DefaultDebugUIEnvironment(environment,state,connection,true).getEnvironment();
            final DebuggerSession debuggerSession = DebuggerManagerEx.getInstanceEx(environment.getProject()).attachVirtualMachine(debugEnv);
            if (debuggerSession == null) {
                return null;
            }

            final DebugProcessImpl debugProcess = debuggerSession.getProcess();
            if (debugProcess.isDetached() || debugProcess.isDetaching()) {
                debuggerSession.dispose();
                return null;
            }
            return XDebuggerManager.getInstance(environment.getProject()).startSession(environment, new XDebugProcessStarter() {
                @Override
                @NotNull
                public XDebugProcess start(@NotNull XDebugSession session) {
                    XDebugSessionImpl sessionImpl = (XDebugSessionImpl)session;
                    ExecutionResult executionResult = debugProcess.getExecutionResult();
                    sessionImpl.addExtraActions(executionResult.getActions());
                    if (executionResult instanceof DefaultExecutionResult) {
                        sessionImpl.addRestartActions(((DefaultExecutionResult)executionResult).getRestartActions());
                        sessionImpl.addExtraStopActions(((DefaultExecutionResult)executionResult).getAdditionalStopActions());
                    }
                    return JavaDebugProcess.create(session, debuggerSession);
                }
            }).getRunContentDescriptor();
        } else {
            ExecutionResult executionResult = state.execute(environment.getExecutor(), this);
            if (executionResult == null) {
                return null;
            }
            return new RunContentBuilder(executionResult, environment).showRunContent(environment.getContentToReuse());
        }
    }
}

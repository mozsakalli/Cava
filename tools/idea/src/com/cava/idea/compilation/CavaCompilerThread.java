package com.cava.idea.compilation;

import com.intellij.openapi.progress.ProgressIndicator;
import compiler.CompilerContext;

import java.io.IOException;

public class CavaCompilerThread extends Thread {

    protected final ProgressIndicator monitor;
    private Throwable throwable;

    public CavaCompilerThread(ProgressIndicator monitor) {
        super(CavaCompilerThread.class.getSimpleName());
        this.monitor = monitor;
    }

    public void compile() throws InterruptedException, IOException {
        start();
        while (isAlive() && !monitor.isCanceled()) {
            join(3000);
        }
        if (isAlive() && monitor.isCanceled()) {
            interrupt();
            join(3000);
        }
        if (throwable instanceof IOException) {
            throw (IOException) throwable;
        } else if (throwable instanceof RuntimeException) {
            throw (RuntimeException) throwable;
        } else if (throwable instanceof Error) {
            throw (Error) throwable;
        } else if (throwable != null) {
            throw new RuntimeException(throwable);
        }
    }

    protected void doCompile() throws Exception {
        CompilerContext.build();
    }

    @Override
    public void run() {
        try {
            doCompile();
        } catch (Throwable t) {
            if (t.getCause() instanceof InterruptedException) {
                // Ignore
                return;
            }
            this.throwable = t;
        }
    }
}

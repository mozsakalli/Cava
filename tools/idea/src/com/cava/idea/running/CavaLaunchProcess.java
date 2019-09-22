package com.cava.idea.running;

import compiler.CavaOptions;
import compiler.util.OpenOnReadFileInputStream;
import org.apache.commons.io.output.NullOutputStream;
import com.intellij.execution.process.*;

import java.io.*;
import java.util.concurrent.CountDownLatch;

public class CavaLaunchProcess extends Process {

    private final CountDownLatch countDownLatch = new CountDownLatch(1);
    private Thread thread;
    int exitCode = -1;
    InputStream in;


    public CavaLaunchProcess(Runnable runnable, InputStream in) {
        this.in = in;
        thread = new Thread() {
            @Override
            public void run() {
                try {
                    runnable.run();
                }finally {
                    countDownLatch.countDown();
                    exitCode = 0;
                }
            }
        };

        thread.start();
    }

    @Override
    public OutputStream getOutputStream() {
        return new NullOutputStream();
    }

    @Override
    public InputStream getInputStream() {
        return in;
    }

    @Override
    public InputStream getErrorStream() {
        return waitInputStream;
    }

    @Override
    public int waitFor() throws InterruptedException {
        countDownLatch.await();
        return 0;
    }

    @Override
    public int exitValue() {
        return exitCode;
    }

    @Override
    public void destroy() {
        try {
            thread.interrupt();
            thread.join();
        }catch(Exception e){}
    }

    final InputStream waitInputStream = new  InputStream() {
        @Override
        public int read() throws IOException {
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
                throw new InterruptedIOException();
            }
            return -1;
        }
    };

}

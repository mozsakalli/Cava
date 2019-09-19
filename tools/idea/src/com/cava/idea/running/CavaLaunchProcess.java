package com.cava.idea.running;

import org.apache.commons.io.output.NullOutputStream;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.CountDownLatch;

public class CavaLaunchProcess extends Process {

    private final CountDownLatch countDownLatch = new CountDownLatch(1);
    private Thread thread;

    public CavaLaunchProcess(Runnable runnable) {
        thread = new Thread() {
            @Override
            public void run() {
                try {
                    runnable.run();
                }finally {
                    countDownLatch.countDown();
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
        return null;
    }

    @Override
    public InputStream getErrorStream() {
        return null;
    }

    @Override
    public int waitFor() throws InterruptedException {
        countDownLatch.await();
        return 0;
    }

    @Override
    public int exitValue() {
        return 0;
    }

    @Override
    public void destroy() {
        try {
            thread.join();
        }catch(Exception e){}
    }
}

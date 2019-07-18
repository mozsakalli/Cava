/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package compiler.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.ExecuteException;
import org.apache.commons.exec.ExecuteStreamHandler;
import org.apache.commons.exec.PumpStreamHandler;
import org.apache.commons.exec.environment.EnvironmentUtils;
import org.apache.commons.exec.util.StringUtils;

/**
 *
 * @author mustafa
 */
public class Executor {

    private final String cmd;
    private List<String> args = new ArrayList<String>();
    private Map<String, String> env = new HashMap<String, String>();
    private boolean inheritEnv = true;
    private File wd;
    private OutputStream out;
    private OutputStream err;
    private InputStream in;
    private boolean closeOutputStreams = false;
    private ExecuteStreamHandler streamHandler = null; 
    
    public Executor(String cmd) {
        this.cmd = cmd;
    }

    public Executor(File cmd) {
        this.cmd = cmd.getAbsolutePath();
    }

    public Executor args(Collection<Object> args) {
        if (!args.isEmpty()) {
            return args(args.toArray(new Object[args.size()]));
        }
        return this;
    }

    public Executor args(Object... args) {
        for (Object a : args) {
            if (a instanceof Collection) {
                args((Collection<Object>) a);
            } else if (a instanceof Object[]) {
                args((Object[]) a);
            } else {
                this.args.add(a instanceof File ? ((File) a).getAbsolutePath() : a.toString());
            }
        }
        return this;
    }

    public Executor inheritEnv(boolean b) {
        this.inheritEnv = b;
        return this;
    }

    public Executor wd(File wd) {
        this.wd = wd;
        return this;
    }

    public Executor errOut(OutputStream out) {
        this.out = out;
        this.err = out;
        return this;
    }

    public Executor out(OutputStream out) {
        this.out = out;
        return this;
    }

    public Executor err(OutputStream err) {
        this.err = err;
        return this;
    }

    public Executor in(InputStream in) {
        this.in = in;
        return this;
    }

    public Executor streamHandler(ExecuteStreamHandler streamHandler) {
        this.streamHandler = streamHandler;
        return this;
    }
    
    public Executor closeOutputStreams(boolean b) {
        this.closeOutputStreams = b;
        return this;
    }

    private CommandLine generateCommandLine() {
        CommandLine commandLine = new CommandLine(cmd);
        for (String arg : args) {
            commandLine.addArgument(arg, false);
        }
        return commandLine;
    }

    @SuppressWarnings("unchecked")
    private Map<String, String> generateEnv() throws IOException {
        Map<String, String> mergedEnv = new HashMap<String, String>();
        if (inheritEnv) {
            mergedEnv.putAll(EnvironmentUtils.getProcEnvironment());
        }
        mergedEnv.putAll(env);
        return mergedEnv;
    }

    private <T extends org.apache.commons.exec.Executor> T initExecutor(T executor) {
        if (streamHandler == null) {
            OutputStream pumpOut = null;
            OutputStream pumpErr = null;
            InputStream pumpIn = null;
            if (out != null) {
                pumpOut = out;
            } else {
                pumpOut = System.out;// new InfoOutputStream(logger);
            }
            if (err != null) {
                pumpErr = err;
            } else {
                pumpErr = System.err;//new ErrorOutputStream(logger);
            }
            if (in != null) {
                pumpIn = in;
            }
            /*if (pumpOut == System.out) {
                pumpOut = new NeverCloseOutputStream(pumpOut);
            }
            if (pumpErr == System.err) {
                pumpErr = new NeverCloseOutputStream(pumpErr);
            }*/
            executor.setStreamHandler(new PumpStreamHandler(pumpOut, pumpErr, pumpIn) {
                @Override
                protected Thread createPump(InputStream is, OutputStream os,
                        boolean closeWhenExhausted) {
                    return super.createPump(is, os, closeOutputStreams ? true : closeWhenExhausted);
                }
            });
        } else {
            executor.setStreamHandler(streamHandler);
        }

        if (wd != null) {
            executor.setWorkingDirectory(wd);
        }
        executor.setExitValue(0);
        return executor;
    }

    private void logCommandLine(CommandLine commandLine) {
        /*
        if (logger == null) {
            return;
        }

        String[] args = commandLine.getArguments();
        if (args.length == 0) {
            logger.info(commandLine.toString());
            return;
        }

        StringBuilder result = new StringBuilder();

        result.append(StringUtils.quoteArgument(commandLine.getExecutable()));
        result.append(' ');

        boolean first = true;
        for (int i = 0; i < args.length; i++) {
            String currArgument = args[i];
            if (StringUtils.isQuoted(currArgument)) {
                result.append(currArgument);
            } else {
                result.append(StringUtils.quoteArgument(currArgument));
            }
            if (i < args.length - 1) {
                result.append(' ');
            }

            if (i == args.length - 1 || result.length() > 2048) {
                logger.info((first ? "" : "    ") + result.toString());
                result.delete(0, result.length());
                first = false;
            }
        }*/
    }

    public int exec() throws ExecuteException, IOException {
        CommandLine commandLine = generateCommandLine();
        logCommandLine(commandLine);
        try {
            return initExecutor(new DefaultExecutor()).execute(commandLine, generateEnv());
        } catch (ExecuteException e) {
            ExecuteException ex = new ExecuteException("Command '" + commandLine + "' failed ",
                    e.getExitValue());
            ex.setStackTrace(e.getStackTrace());
            throw ex;
        }
    }

    private int exitCode;
    public int exitCode() {
        return exitCode;
    }
    
    public String execCapture() throws IOException {
        ExecuteStreamHandler oldStreamHandler = streamHandler;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        CommandLine commandLine = generateCommandLine();
        try {
            streamHandler(new PumpStreamHandler(baos, System.err));
            logCommandLine(commandLine);
            DefaultExecutor executor = initExecutor(new DefaultExecutor());
            exitCode = executor.execute(commandLine, generateEnv());
            return new String(baos.toByteArray()).trim();
        } catch (ExecuteException e) {
            String output = new String(baos.toByteArray()).trim();
            if (output.length() > 0 && e.getMessage().startsWith("Process exited with an error")) {
                StackTraceElement[] origStackTrace = e.getStackTrace();
                e = new ExecuteException("Command '" + commandLine + "' failed with output: "
                        + output + " ", e.getExitValue());
                e.setStackTrace(origStackTrace);
            }
            throw e;
        } finally {
            streamHandler = oldStreamHandler;
        }
    }
}

package com.cava.idea;

import com.cava.idea.compilation.CavaCompileTask;
import com.intellij.execution.filters.TextConsoleBuilderFactory;
import com.intellij.execution.ui.ConsoleView;
import com.intellij.execution.ui.ConsoleViewContentType;
import com.intellij.openapi.compiler.CompileTask;
import com.intellij.openapi.compiler.CompilerManager;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.projectRoots.ProjectJdkTable;
import com.intellij.openapi.projectRoots.Sdk;
import com.intellij.openapi.roots.ModuleRootManager;
import com.intellij.openapi.roots.OrderEnumerator;
import com.intellij.openapi.ui.MessageType;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileListener;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowAnchor;
import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.ui.content.Content;
import com.intellij.util.ui.UIUtil;
import org.jdesktop.swingx.util.OS;

import java.io.File;
import java.io.FilenameFilter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class CavaPlugin {

    public static void initializeProject(Project project) {
// setup a compile task if there isn't one yet
        boolean found = false;
        for (CompileTask task : CompilerManager.getInstance(project).getAfterTasks()) {
            if (task instanceof CavaCompileTask) {
                found = true;
                break;
            }
        }
        if (!found) {
            CompilerManager.getInstance(project).addAfterTask(new CavaCompileTask());
        }

        // initialize our tool window to which we
        // log all messages
        UIUtil.invokeLaterIfNeeded(new Runnable() {
            @Override
            public void run() {
                if (project.isDisposed()) {
                    return;
                }
                ToolWindow toolWindow = ToolWindowManager.getInstance(project).registerToolWindow(ROBOVM_TOOLWINDOW_ID, false, ToolWindowAnchor.BOTTOM, project, true);
                ConsoleView consoleView = TextConsoleBuilderFactory.getInstance().createBuilder(project).getConsole();
                Content content = toolWindow.getContentManager().getFactory().createContent(consoleView.getComponent(), "Console", true);
                toolWindow.getContentManager().addContent(content);
                //toolWindow.setIcon(RoboVmIcons.ROBOVM_SMALL);
                consoleViews.put(project, consoleView);
                toolWindows.put(project, toolWindow);
                logInfo(project, "Cava plugin initialized");
            }
        });

    }

    public static void unregisterProject(Project project) {

    }

    public static File getCavaHome() {
        return new File(System.getProperty("user.home"), ".cava");
    }

    public static File getSdkHome() {
        File sdkHome = new File(getCavaHome(), "sdk");
        return sdkHome;
    }


    public static Sdk getSdk() {
        CavaSdkType sdkType = new CavaSdkType();
        for(Sdk sdk: ProjectJdkTable.getInstance().getAllJdks()) {
            if(sdkType.suggestSdkName(null, null).equals(sdk.getName())) {
                return sdk;
            }
        }
        return null;
    }

    public static List<File> getSdkLibraries() {
        List<File> libs = new ArrayList<File>();
        File libsDir = new File(getSdkHome(), "lib");
        for (File file : libsDir.listFiles(new FilenameFilter() {
            @Override
            public boolean accept(File dir, String name) {
                return name.endsWith(".jar") && !name.contains("cacerts");
            }
        })) {
            libs.add(file);
        }

        return libs;
    }

    public static List<Module> getCavaModules(Project project) {
        return getCavaModules(project, null);
    }

    public static List<Module> getCavaModules(Project project, String targetType) {
        List<Module> validModules = new ArrayList<Module>();
        for (Module module : ModuleManager.getInstance(project).getModules()) {
            if (!isCavaModule(module))
                continue;
            /*
            if (targetType != null) {
                Config config = loadRawModuleConfig(module);
                if (config == null)
                    continue;
                if (!targetType.equals(config.getTargetType()))
                    continue;;
            }
             */
            validModules.add(module);
        }
        return validModules;
    }
    public static boolean isCavaModule(Module module) {
        if (ModuleRootManager.getInstance(module).getSdk() != null) {
            if (ModuleRootManager.getInstance(module).getSdk().getSdkType().getName().toLowerCase().contains("cava")) {
                return true;
            }
        }

        OrderEnumerator classes = ModuleRootManager.getInstance(module).orderEntries().recursively().withoutSdk().compileOnly();
        for (String path : classes.getPathsList().getPathList()) {
            if (isSdkLibrary(path)) {
                return true;
            }
        }

        return false;
    }

    public static File getModuleBaseDir(Module module) {
        File root = new File(ModuleRootManager.getInstance(module).getContentRoots()[0].getPath());
        return root;
    }

    public static boolean isSdkLibrary(String path) {
        String name = new File(path).getName();

        return name.startsWith("cava-classlib");
    }
    private static final String ROBOVM_TOOLWINDOW_ID = "Cava";
    private static OS os;
    static volatile Map<Project, ConsoleView> consoleViews = new ConcurrentHashMap<>();
    static volatile Map<Project, ToolWindow> toolWindows = new ConcurrentHashMap<>();
    static volatile Map<Project, VirtualFileListener> fileListeners = new ConcurrentHashMap<>();
    static final List<UnprintedMessage> unprintedMessages = new ArrayList<UnprintedMessage>();
    private static DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss.SSS ");

    static class UnprintedMessage {
        final String string;
        final ConsoleViewContentType type;

        public UnprintedMessage(String string, ConsoleViewContentType type) {
            this.string = string;
            this.type = type;
        }
    }

    public static void logBalloon(final Project project, final MessageType messageType, final String message) {
        UIUtil.invokeLaterIfNeeded(new Runnable() {
            @Override
            public void run() {
                if (project != null) {
                    // this may throw an exception, see #88. It appears to be a timing
                    // issue
                    try {
                        ToolWindowManager.getInstance(project).notifyByBalloon(ROBOVM_TOOLWINDOW_ID, MessageType.ERROR, message);
                    } catch (Throwable t) {
                        logError(project, message, t);
                    }
                }
            }
        });
    }
    private static String getFormattedTimeStamp() {
        return LocalDateTime.now().format(formatter);
    }

    public static void logInfo(Project project, String format, Object... args) {
        log(project, ConsoleViewContentType.SYSTEM_OUTPUT, "[INFO] " + getFormattedTimeStamp() + format, args);
    }

    public static void logError(Project project, String format, Object... args) {
        log(project, ConsoleViewContentType.ERROR_OUTPUT, "[ERROR] " + getFormattedTimeStamp() + format, args);
    }

    public static void logErrorThrowable(Project project, String s, Throwable t, boolean showBalloon) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter writer = new PrintWriter(stringWriter);
        t.printStackTrace(writer);
        log(project, ConsoleViewContentType.ERROR_OUTPUT, "[ERROR] %s\n%s", s, stringWriter.toString());
        logBalloon(project, MessageType.ERROR, s);
    }

    public static void logWarn(Project project, String format, Object... args) {
        log(project, ConsoleViewContentType.ERROR_OUTPUT, "[WARNING] " + getFormattedTimeStamp() + format, args);
    }

    public static void logDebug(Project project, String format, Object... args) {
        log(project, ConsoleViewContentType.NORMAL_OUTPUT, "[DEBUG] " + getFormattedTimeStamp() + format, args);
    }

    private static void log(final Project project, final ConsoleViewContentType type, String format, Object... args) {
        final String s = String.format(format, args) + "\n";
        UIUtil.invokeLaterIfNeeded(new Runnable() {
            @Override
            public void run() {
                ConsoleView consoleView = project == null ? null : consoleViews.get(project);
                if (consoleView != null) {
                    for (UnprintedMessage unprinted : unprintedMessages) {
                        consoleView.print(unprinted.string, unprinted.type);
                    }
                    unprintedMessages.clear();
                    consoleView.print(s, type);
                } else {
                    unprintedMessages.add(new UnprintedMessage(s, type));
                    if (type == ConsoleViewContentType.ERROR_OUTPUT) {
                        System.err.print(s);
                    } else {
                        System.out.print(s);
                    }
                }
            }
        });
    }

    public static void focusToolWindow(final Project project) {
        UIUtil.invokeLaterIfNeeded(new Runnable() {
            @Override
            public void run() {
                ToolWindow toolWindow = toolWindows.get(project);
                if(toolWindow != null) {
                    toolWindow.show(new Runnable() {
                        @Override
                        public void run() {

                        }
                    });
                }
            }
        });
    }
}

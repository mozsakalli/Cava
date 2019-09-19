package compiler.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author mustafa
 */
public class XCodeUtil {
    
    private static String executeXCodeBuild(File projectPath, String scheme, boolean forSimulator, String action) throws Exception {
        Executor exec = new Executor("xcodebuild").args(
            "-project", projectPath.getAbsolutePath(),
            "-scheme", scheme,    
            "-sdk", forSimulator ? "iphonesimulator" : "iphoneos",    
            action    
        ).wd(projectPath.getParentFile());         
        
        String capture = exec.execCapture();
        int code = exec.exitCode();
        if(code != 0) throw new Exception(capture);
        return capture;
    }

    public static void build(File projectPath, String scheme, boolean forSimulator) throws Exception {
        executeXCodeBuild(projectPath, scheme, forSimulator, "build");
    }
    
    public static List<IosDevice> getSimulators() throws Exception {
        List<IosDevice> list = new ArrayList();
        String capture[] = new Executor("xcrun").args("simctl","list").execCapture().split("\n");
        int line = 0;
        while(line < capture.length && !capture[line].startsWith("== Devices ==")) line++;
        line++;
        String sdk = null;
        Pattern regex = Pattern.compile("(.*)\\(([0-9A-F]+-[0-9A-F]+-[0-9A-F]+-[0-9A-F]+-[0-9A-F]+)\\) \\(([^\\)]+)\\)");
        while(line < capture.length && !capture[line].startsWith("==")) {
            String str = capture[line++];
            if(str.toLowerCase(Locale.ENGLISH).contains("unavailable")) continue;
            if(str.startsWith("--")) {
                sdk = str.substring(2, str.length() - 2).trim();
                if(sdk.startsWith("Unavailable")) sdk = null;
            } else if(sdk != null) {
                Matcher matcher = regex.matcher(str);
                if(matcher.find()) {
                    list.add(new IosDevice(matcher.group(2), matcher.group(1).trim(), sdk, IosDevice.Status.valueOf(matcher.group(3))));
                }
            }
        }
        return list;
    }
    
    public static void launchSimulator(IosDevice device) throws Exception {
        System.out.println("Launching simulator: "+device+" ["+device.id()+"]");
        Executor exec = new Executor("xcrun").args("simctl","boot", device.id());
        String capture = exec.execCapture();
        if(exec.exitCode() != 0) throw new Exception(capture);
        
        exec = new Executor("open").args("/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/");
        capture = exec.execCapture();
        if(exec.exitCode() != 0) throw new Exception(capture);
    }
    
    static Map<String, String> getBuildSettings(File projectPath, String scheme, boolean forSimulator) throws Exception {
        String[] capture = executeXCodeBuild(projectPath, scheme, forSimulator, "-showBuildSettings").split("\n");
        Map<String, String> result = new HashMap();
        for(String line : capture) {
            String[] pair = line.split("=", 2);
            if(pair.length == 2)
                result.put(pair[0].trim(), pair[1].trim());
        }
        return result;
    }
    
    public static File getApplicationFile(File projectPath, String projectName) throws Exception {
        Map<String, String> settings = getBuildSettings(projectPath, projectName, true);
        File appFile = new File(settings.get("BUILT_PRODUCTS_DIR"), settings.get("EXECUTABLE_FOLDER_PATH"));
        return appFile;
    }
    
    public static void installApplicationOnSimulator(IosDevice device, File projectPath, String projectName) throws Exception {
        Map<String, String> settings = getBuildSettings(projectPath, projectName, true);
        File appFile = new File(settings.get("BUILT_PRODUCTS_DIR"), settings.get("EXECUTABLE_FOLDER_PATH"));
        System.out.println("Installing: "+appFile);
        Executor exec = new Executor("xcrun").args("simctl","install",device.id(),appFile.getAbsolutePath());
        String capture = exec.execCapture();
        if(exec.exitCode() != 0) throw new Exception(capture);
    }
    
    //todo: xcrun simctl spawn booted log stream -predicate 'processImagePath endswith "Cava Sample"'
    public static void runOnSimulator(IosDevice device, String bundleIdentifier) throws Exception {
        Executor exec = new Executor("xcrun").args("simctl","launch",device.id(),bundleIdentifier);
        String capture = exec.execCapture();
        if(exec.exitCode() != 0) throw new Exception(capture);
    }
    
}

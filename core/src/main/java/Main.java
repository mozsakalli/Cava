
import compiler.CavaOptions;
import compiler.CompilerContext;
import java.io.File;



/**
 *
 * @author mustafa
 */
public class Main {
    
    public static void main(String...args) throws Exception {
        boolean isMac = true;
        String p = isMac ? "/Users/mustafa/Work/experimental/cava/compiler/" :
                "c:/Work/experimental/cava/compiler/";
        CompilerContext.classPath = new File[]{
            new File("/Users/mustafa/Work/CAVA/classlib/target/classes"),
            //new File("/Users/mustafa/Work/CAVA/classlib/target/cava-classlib-2019.07.18.jar"),
            new File("/Users/mustafa/Work/CAVA/libgdx-sample/target/classes"),
            new File("/Users/mustafa/Work/CAVA/graphics/target/classes"),
            new File("/Users/mustafa/Work/CAVA/debugger/target/classes"),
            new File("/Users/mustafa/Work/CAVA/libgdx/target/classes"),
            new File("/Users/mustafa/Work/CAVA/sample/gdx.jar"),
            new File("/Users/mustafa/Work/CAVA/sample/kotlin-stdlib-1.3.41.jar")
            //new File(p+"light-classlib/target/classes"),
            //new File(p+"../openjdk-12"),
            //new File(p+"classlib/target/classes"),
            //new File(p+"test/target/classes"),
            //new File(p+"debugger/target/classes"),
            //new File(p+"test/jbox2d-library-2.2.1.1"),
            //new File(p+"test/kotlin-stdlib-1.3.41"),
            //new File(p+"debugger/target/classes")
        };
        
        //CompilerContext.mainClassName = "debugger/Debugger";
        //CompilerContext.mainName = "main";
        //CompilerContext.mainSignature = "()Ldebugger/Debugger;";

        CavaOptions.mainClass("com.cava.gdx.sample.IOSLauncher");
        CavaOptions.targetPlatform("iOS");
        CavaOptions.infoPList(new File("/Users/mustafa/Work/CAVA/sample/Info.plist"));
        CavaOptions.applicationName("Cava Sample");
        CavaOptions.simulator(true);
        CavaOptions.applicationId("com.cava.sample");
        CavaOptions.debug(false);
        CavaOptions.debugHost("192.168.1.56");
        //CavaOptions.debugPort(9999);
        CompilerContext.transpile();

    }
}

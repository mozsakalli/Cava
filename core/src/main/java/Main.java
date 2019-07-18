
import compiler.CompilerContext;
import java.io.File;

/**
 *
 * @author mustafa
 */
public class Main {
    
    public static void main(String...args) throws Exception {
        String classpath = System.getProperty("java.class.path");
        for(String s : classpath.split(File.pathSeparator)) System.out.println(s);
        
        boolean isMac = true;
        String p = isMac ? "/Users/mustafa/Work/experimental/cava/compiler/" :
                "c:/Work/experimental/cava/compiler/";
        CompilerContext.classPath = new File[]{
            new File(p+"light-classlib/target/classes"),
            //new File(p+"../openjdk-12"),
            //new File(p+"classlib/target/classes"),
            new File(p+"test/target/classes"),
            //new File(p+"debugger/target/classes"),
            new File(p+"test/jbox2d-library-2.2.1.1"),
            new File(p+"test/kotlin-stdlib-1.3.41"),
            new File(p+"debugger/target/classes")
        };
        
        //CompilerContext.mainClassName = "debugger/Debugger";
        //CompilerContext.mainName = "main";
        //CompilerContext.mainSignature = "()Ldebugger/Debugger;";

        CompilerContext.mainClassName = "test/IOSMain";
        CompilerContext.mainName = "main";
        CompilerContext.mainSignature = "()V";
        
        CompilerContext.transpile(args);
    }
}

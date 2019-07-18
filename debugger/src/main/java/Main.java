
import debugger.Debugger;

/**
 *
 * @author mustafa
 */
public class Main {
    
    
    public static void main(String...args) throws Exception {
        Debugger.start();
        //Debugger debugger = new Debugger();
        /*
        ServerSocket ss =new ServerSocket(9090);
        Socket s = ss.accept();
        InputStream in = s.getInputStream();
        OutputStream out = s.getOutputStream();
        byte[] bytes = new byte[1024*16];
        Debugger debugger = new Debugger();
        debugger.setVM(new VMImpl());
        
        while(true) {
            int readed = in.read(bytes);
            if(readed > 0) {
                debugger.receive(bytes, 0, readed);
                OutBuffer output = debugger.process();
                while(output != null) {
                    out.write(output.getBuffer(), 0, output.getSize());
                    output = debugger.process();
                }
            }   
        }*/
    }

}

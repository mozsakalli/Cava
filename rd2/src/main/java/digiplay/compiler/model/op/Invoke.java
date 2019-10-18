package digiplay.compiler.model.op;

import java.util.ArrayList;
import java.util.List;

public class Invoke extends Op {

    public String className;
    public String methodName;
    public String signature;

    public List<Integer> args = new ArrayList();

    @Override
    public String toString() {
        String str = name+" "+className+":"+methodName+"(";
        for(int i=0; i<args.size(); i++) {
            if(i > 0) str += ",";
            str += "reg"+args.get(i);
        }
        str += ")";
        return str;
    }
}

package digiplay.compiler.model.op;

import java.io.Serializable;

public class ClassConstant implements Serializable {

    public String name;

    public ClassConstant(){}
    public ClassConstant(String name) {
        this.name = fixClassName(name);
    }

    String fixClassName(String n) {
        if(n.charAt(0) == '[')
            return '[' + fixClassName(n.substring(1));
        if(n.startsWith("L") && n.endsWith(";")) {
            return n.substring(1, n.length() - 1);
        }
        return n;
    }

    @Override
    public String toString() {
        return "class("+name+")";
    }
}

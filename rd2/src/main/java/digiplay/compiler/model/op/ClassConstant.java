package digiplay.compiler.model.op;

import java.io.Serializable;

public class ClassConstant implements Serializable {

    public String name;

    public ClassConstant(){}
    public ClassConstant(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "class("+name+")";
    }
}

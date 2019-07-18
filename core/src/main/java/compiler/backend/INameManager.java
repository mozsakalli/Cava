package compiler.backend;

import compiler.model.Method;
import compiler.model.NameAndType;

/**
 *
 * @author mustafa
 */
public interface INameManager {
    
    public String clazz(String name);
    public String method(Method m);
    public String method(Method m, String className);
    public String field(NameAndType field);
    public String local(NameAndType n);
    public String literal(int index);
}

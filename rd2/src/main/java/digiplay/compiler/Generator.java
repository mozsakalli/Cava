package digiplay.compiler;

import digiplay.compiler.model.Clazz;
import digiplay.compiler.model.NameAndType;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Generator {

    List<Clazz> sortedClasses;
    Map<Clazz, Integer> classOffsets = new HashMap<>();
    Writer writer = new Writer();
    Writer literalWriter = new Writer();
    Map<String, Integer> literalOffsets = new HashMap<>();

    public void generate() throws Exception {
        definePrimitive("B", 1);
        definePrimitive("Z", 1);
        definePrimitive("C", 2);
        definePrimitive("S", 2);
        definePrimitive("I", 4);
        definePrimitive("F", 4);
        definePrimitive("J", 8);
        definePrimitive("D", 8);
        sortedClasses = sortClasses();
        //header
        // - class count
        writer.writeInt(sortedClasses.size());

        for(Clazz cls : sortedClasses) {
            defineClass(cls);
        }
    }

    int getLiteral(String str) {
        Integer offset = literalOffsets.get(str);
        if(offset == null) {
            offset = literalWriter.offset();
            literalOffsets.put(str, offset);
            //todo: write literal
        }
        return offset;
    }

    void defineClass(Clazz cls) {
        classOffsets.put(cls, writer.offset());
        Clazz clsCls = CompilerContext.resolve("java/lang/Class");
        for(NameAndType field : clsCls.fields) {
            if(field.isStatic()) continue;

        }
    }

    void definePrimitive(String name, int size) {
        Clazz cls = new Clazz();
        cls.name = name;
        cls.superName = "java/lang/Object";
        CompilerContext.classes.put(name, cls);
    }

    static List<Clazz> sortClasses() {
        final DependencyOrderSet<String, Clazz> dos = new DependencyOrderSet();
        Map<String,Clazz> all = CompilerContext.classes;
        all.values().forEach(c -> dos.add(c.name, c));
        all.values().forEach(c -> {
            if(c.superName != null) dos.depends(c.name, c.superName);
            c.interfaces.forEach(i -> dos.depends(c.name, i));
        });

        return dos.sort();
    }

}

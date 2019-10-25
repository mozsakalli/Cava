package digiplay.compiler;

import digiplay.compiler.model.Clazz;
import digiplay.compiler.model.NameAndType;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ClassStructure {

    Map<NameAndType, Integer> offsets = new HashMap<>();
    public int size;

    private ClassStructure(Clazz cls) {
        if(cls.superName != null) {
            ClassStructure parent = get(CompilerContext.resolve(cls.superName));
            size = parent.size;
            offsets.putAll(parent.offsets);
        }

        for(NameAndType f : cls.fields) {
            if(!f.isStatic()) {
                int fieldSize = 4;
                if(f.type.equals("J") || f.type.equals("D"))
                    fieldSize = 8;
                offsets.put(f, size);
                size += fieldSize;
            }
        }
    }

    public int offset(NameAndType field) {
        Integer offset = offsets.get(field);
        if(offset == null) throw new RuntimeException("Offset not found: "+field.declaringClass+":"+field.name+":"+field.type);
        return offset;
    }

    public static int offset(Clazz cls, NameAndType field) {
        ClassStructure struct = get(cls);
        return struct.offset(field);
    }

    static Map<Clazz, ClassStructure> cache = new HashMap<>();
    public static ClassStructure get(Clazz cls) {
        ClassStructure struct = cache.get(cls);
        if(struct == null) {
            struct = new ClassStructure(cls);
            cache.put(cls, struct);
        }
        return struct;
    }
}

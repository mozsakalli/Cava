package digiplay.compiler;

import digiplay.compiler.model.Clazz;

import java.io.ByteArrayOutputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;

public class Writer {

    ByteArrayOutputStream out = new ByteArrayOutputStream();
    DataOutputStream d = new DataOutputStream(out);

    public int offset() {
        return out.size();
    }

    public void writeByte(int value) {
        try { d.writeByte(value); }catch(Exception e){}
    }

    public void writeInt(int value) {
        try { d.writeInt(value); }catch(Exception e){}
    }

    public void writeFloat(float value) {
        try { d.writeFloat(value); }catch(Exception e){}
    }

    public void writeLong(long value) {
        try { d.writeLong(value); }catch(Exception e){}
    }
}

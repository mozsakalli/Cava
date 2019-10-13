/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package java.lang.reflect;

import cava.VM;
import cava.annotation.Keep;

/**
 *
 * @author mustafa
 */
@Keep
public class Field {
    public Class declaringClass;
    public String name;
    public Class type;
    public int modifiers;
    public Object address;
    
    public String getName(){
        return name;
    }
    
    public int getModifiers(){
        return modifiers;
    }
    
    public Class getType(){
        return type;
    }
    
    public Class getDeclaringClass() {
        return declaringClass;
    }
    
    public void setAccessible(boolean value){}
    /*
    public Object get(Object base) {
        if(type == byte.class)
            return getByte(base);
        if(type == boolean.class)
            return getBoolean(base);
        if(type == char.class)
            return getChar(base);
        if(type == short.class)
            return getShort(base);
        if(type == int.class)
            return getInt(base);
        if(type == long.class)
            return getLong(base);
        if(type == float.class)
            return getFloat(base);
        if(type == double.class)
            return getDouble(base);
        
        return VM.getObject(addr(base), 0);
    }
    
    public void set(Object base, Object value) {
        if(type == byte.class) {
            byte val = value != null && value instanceof Number ? ((Number)value).byteValue() : 0;
            setByte(base, val);
        } else if(type == boolean.class) {
            boolean val = value != null && value instanceof Boolean ? ((Boolean)value).booleanValue() : false;
            setBoolean(base, val);
        } else if(type == char.class) {
            char val = value != null && value instanceof Character ? ((Character)value).charValue() : 0;
            setChar(base, val);
        } else if(type == short.class) {
            short val = value != null && value instanceof Number ? ((Number)value).shortValue() : 0;
            setShort(base, val);
        } else if(type == int.class) {
            int val = value != null && value instanceof Number ? ((Number)value).intValue() : 0;
            setInt(base, val);
        } else if(type == float.class) {
            float val = value != null && value instanceof Number ? ((Number)value).floatValue() : 0;
            setFloat(base, val);
        } else if(type == long.class) {
            long val = value != null && value instanceof Number ? ((Number)value).longValue() : 0;
            setLong(base, val);
        } else if(type == double.class) {
            double val = value != null && value instanceof Number ? ((Number)value).doubleValue() : 0;
            setDouble(base, val);
        }
        else {
            if(value != null && !type.isAssignableFrom(value.getClass()))
                throw new ClassCastException("Can't assign "+value.getClass().getName()+" to "+type.getName());
            
            VM.setObject(addr(base), 0, value);
        }
    }
    
    private Object addr(Object base) {
        long src = VM.addressToLong(address);
        if(!Modifier.isStatic(modifiers)) src += VM.addressToLong(base);
        return VM.longToAddress(src);
    }
    
    public byte getByte(Object base) {
        return VM.getByte(addr(base), 0);
        
    }
    public void setByte(Object base, byte value) {
        VM.setByte(addr(base), 0, value);
    }

    public char getChar(Object base) {
        return VM.getChar(addr(base),0);
    }
    public void setChar(Object base, char value) {
        VM.setChar(addr(base), 0, value);
    }
    
    public boolean getBoolean(Object base) {
        return VM.getByte(addr(base), 0) != 0;
    }
    public void setBoolean(Object base, boolean value) {
        VM.setByte(addr(base), 0, (byte)(value ? 1 : 0));
    }
    
    public short getShort(Object base) {
        return VM.getShort(addr(base), 0);
    }
    
    public void setShort(Object base, short value) {
        VM.setShort(addr(base), 0, value);
    }
    
    public int getInt(Object base) {
        return VM.getInt(addr(base), 0);
    }
    public void setInt(Object base, int value) {
        VM.setInt(addr(base), 0, value);
    }

    public long getLong(Object base) {
        return VM.getLong(addr(base), 0);
    }
    public void setLong(Object base, long value) {
        VM.setLong(addr(base), 0, value);
    }
    
    public float getFloat(Object base) {
        return VM.getLong(addr(base), 0);
    }
    public void setFloat(Object base, float value) {
        VM.setFloat(addr(base), 0, value);
    }
    
    public double getDouble(Object base) {
        return VM.getDouble(addr(base), 0);
    }
    public void setDouble(Object base, double value) {
        VM.setDouble(addr(base), 0, value);
    }
    
    */
    
}

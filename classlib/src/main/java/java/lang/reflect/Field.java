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

import cava.annotation.Keep;
import cava.c.CharPtr;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

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
    public VoidPtr address;
    
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
    
    private long getSafeLong(Object base) {
        VoidPtr ptr = Modifier.isStatic(modifiers) ?
                address :
                NativeCode.VoidPtr("(void*)((char*)%s + (JINT)%s)", base, address);
            
        if(type == byte.class) 
            return NativeCode.Long("(((JBYTE*)%s)[0])", ptr);
        if(type == boolean.class)
            return NativeCode.Long("(((JBOOL*)%s)[0])", ptr);
        if(type == char.class)
            return NativeCode.Long("(((JCHAR*)%s)[0])", ptr);
        if(type == short.class)
            return NativeCode.Long("(((JSHORT*)%s)[0])", ptr);
        if(type == int.class)
            return NativeCode.Long("(((JINT*)%s)[0])", ptr);
        if(type == long.class)
            return NativeCode.Long("(((JLONG*)%s)[0])", ptr);
        return 0;
    }
    
    private void setSafeLong(Object base, long value) {
        VoidPtr ptr = Modifier.isStatic(modifiers) ?
                address :
                NativeCode.VoidPtr("(void*)((char*)%s + (JINT)%s)", base, address);
        if(type == byte.class) 
            NativeCode.Void("((JBYTE*)%s)[0] = (JBYTE)%s", ptr, value);
        if(type == boolean.class)
            NativeCode.Void("((JBOOL*)%s)[0] = (JBOOL)%s", ptr, value);
        if(type == char.class)
            NativeCode.Void("((JCHAR*)%s)[0] = (JCHAR)%s", ptr, value);
        if(type == short.class)
            NativeCode.Void("((JSHORT*)%s)[0] = (JSHORT)%s", ptr, value);
        if(type == int.class)
            NativeCode.Void("((JINT*)%s)[0] = (JINT)%s", ptr, value);
        if(type == long.class)
            NativeCode.Void("((JLONG*)%s)[0] = (JLONG)%s", ptr, value);
    } 

    private double getSafeDouble(Object base) {
        VoidPtr ptr = Modifier.isStatic(modifiers) ?
                address :
                NativeCode.VoidPtr("(void*)((char*)%s + (JINT)%s)", base, address);
            
        if(type == double.class) 
            return NativeCode.Double("(((JDOUBLE*)%s)[0])", ptr);
        if(type == float.class)
            return NativeCode.Float("(((JFLOAT*)%s)[0])", ptr);
        return 0;
    }
    
    private void setSafeDouble(Object base, double value) {
        VoidPtr ptr = Modifier.isStatic(modifiers) ?
                address :
                NativeCode.VoidPtr("(void*)((char*)%s + (JINT)%s)", base, address);
        if(type == double.class) 
            NativeCode.Void("((JDOUBLE*)%s)[0] = (JDOUBLE)%s", ptr, value);
        if(type == float.class)
            NativeCode.Void("((JFLOAT*)%s)[0] = (JFLOAT)%s", ptr, value);
    } 
    
    public Object get(Object base) {
        if(type == byte.class)
            return (byte)getSafeLong(base);
        if(type == boolean.class)
            return (boolean)(getSafeLong(base) == 1);
        if(type == char.class)
            return (char)getSafeLong(base);
        if(type == short.class)
            return (short)getSafeLong(base);
        if(type == int.class)
            return (int)getSafeLong(base);
        if(type == long.class)
            return getSafeLong(base);
        if(type == float.class)
            return (float)getSafeDouble(base);
        if(type == double.class)
            return getSafeDouble(base);
        
        VoidPtr ptr = Modifier.isStatic(modifiers) ?
                address :
                NativeCode.VoidPtr("(void*)((char*)%s + (JINT)%s)", base, address);
                
        return NativeCode.Object("((JOBJECT*)%s)[0]", ptr);
    }
    
    public void set(Object base, Object value) {
        if(type == float.class || type == double.class) {
            if(value != null && value instanceof Number)
            setSafeDouble(base, ((Number)value).doubleValue());
        } else if(type == byte.class || type == short.class || type == int.class || type == long.class) {
            if(value != null && value instanceof Number)
            setSafeLong(base, ((Number)value).longValue());
        } else if(type == boolean.class) {
            if(value != null && value instanceof Boolean)
                setSafeLong(base, ((Boolean)value) ? 1 : 0);
        } else if(type == char.class) {
            if(value != null) {
                if(value instanceof Character)
                    setSafeLong(base, ((Character)value).charValue());
                else if(value instanceof Number) 
                    setSafeLong(base, ((Number)value).longValue());
                
            }
        } else {
            if(value != null && !type.isAssignableFrom(value.getClass()))
                throw new ClassCastException("Can't assign "+value.getClass().getName()+" to "+type.getName());
            VoidPtr ptr = Modifier.isStatic(modifiers) ?
                    address :
                    NativeCode.VoidPtr("(void*)((char*)%s + (JINT)%s)", base, address);
            NativeCode.Void("((JOBJECT*)%s)[0] = (JOBJECT)%s", ptr, value);
        }
    }
    
    public byte getByte(Object base) {
        return (byte)getSafeLong(base);
        
    }
    public void setByte(Object base, byte value) {
        setSafeLong(base, value);
    }

    public char getChar(Object base) {
        return (char)getSafeLong(base);
    }
    public void setChar(Object base, char value) {
        setSafeLong(base, value);
    }
    
    public boolean getBoolean(Object base) {
        return getSafeLong(base) == 1;
    }
    public void setBoolean(Object base, boolean value) {
        setSafeLong(base, value ? 1 : 0);
    }
    
    public short getShort(Object base) {
        return (short)getSafeLong(base);
    }
    public void setShort(Object base, short value) {
        setSafeLong(base, value);
    }
    
    public int getInt(Object base) {
        return (int)getSafeLong(base);
    }
    public void setInt(Object base, int value) {
        setSafeLong(base, value);
    }

    public long getLong(Object base) {
        return getSafeLong(base);
    }
    public void setLong(Object base, long value) {
        setSafeLong(base, value);
    }
    
    public float getFloat(Object base) {
        return (float)getSafeDouble(base);
    }
    public void setFloat(Object base, float value) {
        setSafeDouble(base, value);
    }
    
    public double getDouble(Object base) {
        return getSafeDouble(base);
    }
    public void setDouble(Object base, double value) {
        setSafeDouble(base, value);
    }
    
    
    
}

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

package com.cava.debugger;

import cava.platform.NativeCode;
import java.lang.reflect.Method;

/**
 *
 * @author ozsak
 */
public class JdwpUtil {
    
    public static byte jdwpTypeTag(Class klass) {
        if(klass.isArray())
            return JdwpConsts.TypeTag.ARRAY;
        if(klass.isInterface())
            return JdwpConsts.TypeTag.INTERFACE;
        return JdwpConsts.TypeTag.CLASS;
    }
    
    public static byte jdwpSimpleType(Class klass) {
        if(klass == byte.class) return 'B';
        if(klass == boolean.class) return 'Z';
        if(klass == char.class) return 'C';
        if(klass == short.class) return 'S';
        if(klass == int.class) return 'I';
        if(klass == float.class) return 'F';
        if(klass == long.class) return 'J';
        if(klass == double.class) return 'D';
        if(klass.isArray()) return '[';
        return 'L';
    }
    
    public static String methodSignature(Method m) {
        StringBuilder sign = new StringBuilder("(");
        for(Class c : m.getParameterTypes()) {
            sign.append(toSignature(c));
        }
        sign.append(")").append(toSignature(m.getReturnType()));
        return sign.toString();
    }
    
    public static String toSignature(Class c) {
        if(c.isArray())
            return "["+toSignature(c.getComponentType());
        if(c == byte.class) return "B";
        else if(c == boolean.class) return "Z";
        else if(c == char.class) return "C";
        else if(c == short.class) return "S";
        else if(c == int.class) return "I";
        else if(c == float.class) return "F";
        else if(c == long.class) return "J";
        else if(c == double.class) return "D";  
        else if(c == void.class) return "V";
        else {
            return "L"+c.getName().replace('.', '/')+";";
        }
    }
    
    public static void writeValue(OutBuffer out, Object value, Class type) {
        //out.writeByte(jdwpSimpleType(type));
        if(type == byte.class) {
            out.writeByte('B');
            out.writeByte((Byte)value);
        } else if(type == boolean.class) {
            out.writeByte('Z');
            out.writeBoolean((Boolean)value);
        } else if(type == char.class) {
            out.writeByte('C');
            out.writeShort((Character)value);
        } else if(type == short.class) {
            out.writeByte('S');
            out.writeShort((Short)value);
        } else if(type == int.class) {
            out.writeByte('I');
            out.writeInt((Integer)value);
        } else if(type == float.class) {
            out.writeByte('F');
            out.writeFloat((Float)value);
        } else if(type == double.class) {
            out.writeByte('D');
            out.writeDouble((Double)value);
        } else {
            if(type == String.class)
                out.writeByte(JdwpConsts.Tag.STRING);
            else
                out.writeByte(type.isArray() ? '[' : 'L');
            out.writeLong(NativeCode.Long("(jlong)%s", value));
        }
    }
}

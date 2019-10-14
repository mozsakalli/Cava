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

package cava;

import java.lang.reflect.Method;

/**
 *
 * @author mustafa
 */
public class VM {
    
    public native static Class[] getAllClasses();
    //public native static Class getVoidClass();
    
    public native static int hashCode(Object o);
    
    public native static boolean isNaN(double value);
    public native static boolean isNaN(float value);
    
    public native static int floatToInt(float value);
    public native static float intToFloat(int value);
    
    public native static long doubleToLong(double value);
    public native static double longToDouble(long value);
    
    public native static Object allocObject(Class type);
    //public native static Object allocObjectArray(Class type, int length);
    
    public native static int getArrayLength(Object array);
    public native static void memmove(Object dst, int dstOffset, Object src, int srcOffset, int size);
    public native static void memmovePtr(Object dst, int dstOffset, Object src, int srcOffset, int size);
    public native static void memmoveObject(Object dst, Object src);
    
    /*
    public native static long addressToLong(Object address);
    public native static Object longToAddress(long address);
    
    public native static Object alloc(int size);
    public native static void free(Object address);

    public native static byte getByte(Object address, int offset);
    public native static void setByte(Object address, int offset, byte value);

    public native static char getChar(Object address, int offset);
    public native static void setChar(Object address, int offset, char value);
    
    public native static short getShort(Object address, int offset);
    public native static void setShort(Object address, int offset, short value);
    
    public native static int getInt(Object address, int offset);
    public native static void setInt(Object address, int offset, int value);
    
    public native static float getFloat(Object address, int offset);
    public native static void setFloat(Object address, int offset, float value);
    
    public native static double getDouble(Object address, int offset);
    public native static void setDouble(Object address, int offset, double value);
    
    public native static long getLong(Object address, int offset);
    public native static void setLong(Object address, int offset, long value);
    
    public native static Object getObject(Object address, int offset);
    public native static void setObject(Object address, int offset, Object value);
    
    public native static Object getArrayBase(Object array);
    public native static int getArrayLength(Object array);
    
    public native static void memmove(Object dest, Object src, int size);
    */
    public native static long currentTimeMillis();
    
    public native static double cos(double v);
    public native static double acos(double v);
    public native static double sin(double v);
    public native static double asin(double v);
    public native static double tan(double v);
    public native static double atan(double v);
    public native static double atan2(double y, double x);
    public native static double ceil(double v);
    public native static double floor(double v);
    public native static double exp(double v);
    public native static double log(double v);
    public native static double log10(double v);
    public native static double pow(double x, double y);
    public native static double sqrt(double v);
    
    
    public native static Object invoke(Method method, Object base, Object...args);
    
}

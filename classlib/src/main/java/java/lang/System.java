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

package java.lang;

import cava.annotation.Include;
import cava.c.CLib;
import cava.c.CharPtr;
import cava.platform.NativeCode;
import java.io.ConsolePrintStream;
import java.lang.reflect.Array;

@Include("<sys/time.h> <time.h>")
public final class System {
    /**
     * The "standard" error output stream. This stream is already open and ready to accept output data.
     * Typically this stream corresponds to display output or another output destination specified by the host environment or user. By convention, this output stream is used to display error messages or other information that should come to the immediate attention of a user even if the principal output stream, the value of the variable out, has been redirected to a file or other destination that is typically not continuously monitored.
     */
    public static final java.io.PrintStream err = new ConsolePrintStream();

    /**
     * The "standard" output stream. This stream is already open and ready to accept output data. Typically this stream corresponds to display output or another output destination specified by the host environment or user.
     * For simple stand-alone Java applications, a typical way to write a line of output data is:
     * System.out.println(data)
     * See the println methods in class PrintStream.
     * See Also:PrintStream.println(), PrintStream.println(boolean), PrintStream.println(char), PrintStream.println(char[]), PrintStream.println(int), PrintStream.println(long), PrintStream.println(java.lang.Object), PrintStream.println(java.lang.String)
     */
    public static final java.io.PrintStream out = new ConsolePrintStream();

    /**
     * Copies an array from the specified source array, beginning at the specified position, to the specified position of the destination array. A subsequence of array components are copied from the source array referenced by src to the destination array referenced by dst. The number of components copied is equal to the length argument. The components at positions srcOffset through srcOffset+length-1 in the source array are copied into positions dstOffset through dstOffset+length-1, respectively, of the destination array.
     * If the src and dst arguments refer to the same array object, then the copying is performed as if the components at positions srcOffset through srcOffset+length-1 were first copied to a temporary array with length components and then the contents of the temporary array were copied into positions dstOffset through dstOffset+length-1 of the destination array.
     * If dst is null, then a NullPointerException is thrown.
     * If src is null, then a NullPointerException is thrown and the destination array is not modified.
     * Otherwise, if any of the following is true, an ArrayStoreException is thrown and the destination is not modified: The src argument refers to an object that is not an array. The dst argument refers to an object that is not an array. The src argument and dst argument refer to arrays whose component types are different primitive types. The src argument refers to an array with a primitive component type and the dst argument refers to an array with a reference component type. The src argument refers to an array with a reference component type and the dst argument refers to an array with a primitive component type.
     * Otherwise, if any of the following is true, an IndexOutOfBoundsException is thrown and the destination is not modified: The srcOffset argument is negative. The dstOffset argument is negative. The length argument is negative. srcOffset+length is greater than src.length, the length of the source array. dstOffset+length is greater than dst.length, the length of the destination array.
     * Otherwise, if any actual component of the source array from position srcOffset through srcOffset+length-1 cannot be converted to the component type of the destination array by assignment conversion, an ArrayStoreException is thrown. In this case, let k be the smallest nonnegative integer less than length such that src[srcOffset+k] cannot be converted to the component type of the destination array; when the exception is thrown, source array components from positions srcOffset through srcOffset+k-1 will already have been copied to destination array positions dstOffset through dstOffset+k-1 and no other positions of the destination array will have been modified. (Because of the restrictions already itemized, this paragraph effectively applies only to the situation where both arrays have component types that are reference types.)
     */
    public static void arraycopy(java.lang.Object src, int srcOffset, java.lang.Object dst, int dstOffset, int length) {
        //both must be array
        if(src.klass.componentType == null || dst.klass.componentType == null) return;
        boolean srcIsPrim = src.klass.componentType.isPrimitive();
        boolean dstIsPrim = dst.klass.componentType.isPrimitive();
        if(srcIsPrim != dstIsPrim) return;
        int srcLen = Array.getLength(src);
        if(srcOffset + length > srcLen) throw new IndexOutOfBoundsException();
        int dstLen = Array.getLength(dst);
        if(dstOffset + length > dstLen) throw new IndexOutOfBoundsException();
        if(srcIsPrim) {
            if(src.klass.componentType.size == dst.klass.componentType.size) {
                if(src.klass.componentType.size < 0 || src.klass.componentType.size > 8) throw new RuntimeException("ınvalid componet size");
                int size = src.klass.componentType.size;
                CLib.memmove(CharPtr.fromAnyArray(dst), dstOffset*size, CharPtr.fromAnyArray(src), srcOffset * size, length * size);
                /*CLib.memcpy(CharPtr.fromAnyArray(dst).add(dstOffset*size),
                            CharPtr.fromAnyArray(src).add(srcOffset*size),
                            length * size);*/
            }
        } else {
            //todo: check if classes are compatible
            int size = NativeCode.Int("sizeof(jobject)");
            CLib.memmove(CharPtr.fromAnyArray(dst), dstOffset*size, CharPtr.fromAnyArray(src), srcOffset * size, length * size);
            /*
            CLib.memcpy(CharPtr.fromAnyArray(dst).add(dstOffset*size),
                        CharPtr.fromAnyArray(src).add(srcOffset*size),
                        length * size);
            */
        }
    }

    /**
     * Returns the current time in milliseconds.
     */
    public static long currentTimeMillis() {
        NativeCode.Void("struct timeval now;\n"+
                        "gettimeofday(&now, NULL);\n");
        return NativeCode.Long("now.tv_sec * 1000LL + now.tv_usec / 1000");        
    }

    public static long nanoTime() {
        long result = 0;
        NativeCode.Void(
        "#if defined(__APPLE__)\n"+
        "    mach_timebase_info_data_t info;\n"+
        "    mach_timebase_info(&info);\n"+
        "    uint64_t t = mach_absolute_time();\n"+
        "    t *= info.numer;\n"+
        "    t /= info.denom;\n"+
        "    %s = (jlong) t;\n"+
        "#else\n"+
        "    struct timespec now;\n"+
        "    clock_gettime(CLOCK_MONOTONIC, &now);\n"+
        "    %s = now.tv_sec * 1000000000LL + now.tv_nsec;\n"+
        "#endif\n", result, result);
        return result;
    }
    
    /**
     * Terminates the currently running Java application. The argument serves as a status code; by convention, a nonzero status code indicates abnormal termination.
     * This method calls the exit method in class Runtime. This method never returns normally.
     * The call System.exit(n) is effectively equivalent to the call:
     * Runtime.getRuntime().exit(n)
     */
    public static native void exit(int status);

    /**
     * Runs the garbage collector.
     * Calling the gc method suggests that the Java Virtual Machine expend effort toward recycling unused objects in order to make the memory they currently occupy available for quick reuse. When control returns from the method call, the Java Virtual Machine has made a best effort to reclaim space from all discarded objects.
     * The call System.gc() is effectively equivalent to the call:
     * Runtime.getRuntime().gc()
     */
    public static void gc() {
        NativeCode.Void("GC_collect_a_little()");
    }
    
    /**
     * Gets the system property indicated by the specified key.
     */
    public static java.lang.String getProperty(java.lang.String key){
        return null; 
    }

    /**
     * Returns the same hashcode for the given object as would be returned by the default method hashCode(), whether or not the given object's class overrides hashCode(). The hashcode for the null reference is zero.
     */
    public static int identityHashCode(java.lang.Object x){
        if(x == null) {
            return 0;
        }
        return x.hashCode(); 
    }

    public static String getenv(String name) {
        throw new UnsupportedOperationException();
    }
}

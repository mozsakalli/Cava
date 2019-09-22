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
import java.io.PrintStream;
import java.lang.reflect.Array;

@Include("<sys/time.h> <time.h>")
public final class System {

    public static final java.io.PrintStream err = new ConsolePrintStream();
    public static final java.io.PrintStream out = new ConsolePrintStream();

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
                if(src.klass.componentType.size < 0 || src.klass.componentType.size > 8) throw new RuntimeException("Invalid componet size");
                int size = src.klass.componentType.size;
                CLib.memmove(CharPtr.fromArray(dst), dstOffset*size, CharPtr.fromArray(src), srcOffset * size, length * size);
            }
        } else {
            //todo: check if classes are compatible
            int size = NativeCode.Int("sizeof(JOBJECT)");
            CLib.memmove(CharPtr.fromArray(dst), dstOffset*size, CharPtr.fromArray(src), srcOffset * size, length * size);
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
        "    %s = (JLONG) t;\n"+
        "#else\n"+
        "    struct timespec now;\n"+
        "    clock_gettime(CLOCK_MONOTONIC, &now);\n"+
        "    %s = now.tv_sec * 1000000000LL + now.tv_nsec;\n"+
        "#endif\n", result, result);
        return result;
    }
    
    public static native void exit(int status);

    public static void gc() {
        NativeCode.Void("GC_collect_a_little()");
    }
    
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
    
    public static void setOut(PrintStream out) {
        System.class.getDeclaredField("out").set(null, out);
    }
}

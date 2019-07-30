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

package com.badlogic.gdx.utils;

import cava.c.CLib;
import cava.c.VoidPtr;
import java.nio.Buffer;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/**
 * 
 * @author mustafa
 * 
 * Not Completed
 */
public final class BufferUtils {
    
    public static ByteBuffer newByteBuffer(int capacity) {
        System.out.println("newbb: "+capacity);
        return ByteBuffer.allocateDirect(capacity);
    }
    public static ByteBuffer newUnsafeByteBuffer(int capacity) {
        System.out.println("newbb: "+capacity);
        return ByteBuffer.allocateDirect(capacity);
    }
    //garbage collector will handle this
    public static void disposeUnsafeByteBuffer(ByteBuffer buffer) {}
    
    public static IntBuffer newIntBuffer(int capacity) {
        System.out.println("newib: "+capacity);
        return ByteBuffer.allocateDirect(capacity * CLib.INT_SIZE).asIntBuffer();
    }
    
    public static FloatBuffer newFloatBuffer(int capacity) {
        System.out.println("newfb: "+capacity);
        return ByteBuffer.allocateDirect(capacity * CLib.FLOAT_SIZE).asFloatBuffer();
    }
    
    static int getBufferElementSize(Buffer buffer) {
        Class cls = buffer.getClass();
        if(cls == ByteBuffer.class)
            return CLib.BYTE_SIZE;
        if(cls == ShortBuffer.class)
            return CLib.SHORT_SIZE;
        if(cls == FloatBuffer.class)
            return CLib.FLOAT_SIZE;
        if(cls == IntBuffer.class)
            return CLib.INT_SIZE;
        throw new RuntimeException("Invalid buffer type: "+cls);
    }
    
    public static void copy (float[] src, Buffer dst, int numFloats, int offset) {
        int elementSize = getBufferElementSize(dst);
        CLib.memcpy(VoidPtr.fromBuffer(dst), 0,
                VoidPtr.fromAnyArray(src), offset * CLib.FLOAT_SIZE, numFloats * CLib.FLOAT_SIZE);
        dst.limit((numFloats * CLib.FLOAT_SIZE) / elementSize);
        dst.position(0);
    }
}
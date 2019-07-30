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
package java.nio;

import cava.c.CLib;
import cava.c.VoidPtr;
import cava.platform.NativeCode;
import java.util.Arrays;

/**
 *
 * @author mustafa
 */
public class ByteBuffer extends Buffer {

    public static ByteBuffer allocate(int capacity) {
        return new ByteBuffer(new byte[capacity]);
    }

    public static ByteBuffer allocateDirect(int capacity) {
        return new ByteBuffer(capacity);
    }

    public static ByteBuffer wrap(byte[] array) {
        return new ByteBuffer(array);
    }

    public static ByteBuffer wrap(byte[] array, int start, int byteCount) {
        Arrays.checkOffsetAndCount(array.length, start, byteCount);
        ByteBuffer buf = new ByteBuffer(array);
        buf.position = start;
        buf.limit = start + byteCount;
        return buf;
    }

    ByteBuffer(int capacity) {
        super(capacity, CLib.malloc(capacity), null, true);
    }

    ByteBuffer(byte[] array) {
        super(array.length, VoidPtr.fromAnyArray(array), array, false);
    }

    ByteBuffer(ByteBuffer other) {
        super(other.remaining(), NativeCode.VoidPtr("((char*)%s)+%s", other.ptr, other.position), other.array, false);
        order = other.order;
        isReadOnly = other.isReadOnly;
        this.buffer = other;
    }

    @Override
    public int hashCode() {
        int myPosition = position;
        int hash = 0;
        while (myPosition < limit) {
            hash = hash + get(myPosition++);
        }
        return hash;
    }

    @Override
    public boolean equals(Object other) {
        if (!(other instanceof ByteBuffer)) {
            return false;
        }
        ByteBuffer otherBuffer = (ByteBuffer) other;

        if (remaining() != otherBuffer.remaining()) {
            return false;
        }

        int myPosition = position;
        int otherPosition = otherBuffer.position;
        boolean equalSoFar = true;
        while (equalSoFar && (myPosition < limit)) {
            equalSoFar = get(myPosition++) == otherBuffer.get(otherPosition++);
        }

        return equalSoFar;
    }

    public ByteBuffer order(ByteOrder order) {
        this.order = order;
        return this;
    }

    public ByteBuffer slice() {
        return new ByteBuffer(this);
    }

    public ShortBuffer asShortBuffer() {
        return new ShortBuffer(this);
    }

    public IntBuffer asIntBuffer() {
        return new IntBuffer(this);
    }

    public FloatBuffer asFloatBuffer() {
        return new FloatBuffer(this);
    }

    public final byte get() {
        if (position == limit) {
            throw new BufferUnderflowException();
        }
        return NativeCode.Byte("((char*)%s)[%s]", ptr, position++);
    }

    public final byte get(int index) {
        checkIndex(index);
        return NativeCode.Byte("((char*)%s)[%s]", ptr, index);
    }

    public final short getShort() {
        int newPosition = position + CLib.SHORT_SIZE;
        if (newPosition > limit) {
            throw new BufferUnderflowException();
        }
        short result = NativeCode.Short("*(jshort*)(((char*)%s)+%s)", ptr, position);
        position = newPosition;
        return result;
    }

    public final short getShort(int index) {
        checkIndex(index, CLib.SHORT_SIZE);
        return NativeCode.Short("*(jshort*)(((char*)%s)+%s)", ptr, index);
    }
    
    public final int getInt() {
        int newPosition = position + CLib.INT_SIZE;
        if (newPosition > limit) {
            throw new BufferUnderflowException();
        }
        int result = NativeCode.Int("*(jint*)(((char*)%s)+%s)", ptr, position);
        position = newPosition;
        return result;
    }

    public final int getInt(int index) {
        checkIndex(index, CLib.INT_SIZE);
        return NativeCode.Int("*(jint*)(((char*)%s)+%s)", ptr, index);
    }

    public final float getFloat() {
        int newPosition = position + CLib.INT_SIZE;
        if (newPosition > limit) {
            throw new BufferUnderflowException();
        }
        float result = NativeCode.Float("*(jfloat*)(((char*)%s)+%s)", ptr, position);
        position = newPosition;
        return result;
    }

    public final float getFloat(int index) {
        checkIndex(index, CLib.FLOAT_SIZE);
        return NativeCode.Int("*(jfloat*)(((char*)%s)+%s)", ptr, index);
    }

    public ByteBuffer put(ByteBuffer src) {
        if (isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (src == this) {
            throw new IllegalArgumentException("src == this");
        }
        int srcByteCount = src.remaining();
        if (srcByteCount > remaining()) {
            throw new BufferOverflowException();
        }

        Object srcObject = src.ptr;
        int srcOffset = src.position();

        ByteBuffer dst = this;
        Object dstObject = dst.ptr;
        int dstOffset = dst.position();
        
        
        CLib.memmove(dstObject, dstOffset, srcObject, srcOffset, srcByteCount);
        src.position(src.limit());
        dst.position(dst.position() + srcByteCount);

        return this;
    }

    public ByteBuffer put(byte[] src, int srcOffset, int byteCount) {
        if (isReadOnly) {
            throw new ReadOnlyBufferException();
        }
        checkPutBounds(1, src.length, srcOffset, byteCount);
        CLib.memmove(ptr, position, VoidPtr.fromAnyArray(src), srcOffset, byteCount);
        position += byteCount;
        return this;
    }
}

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

/**
 *
 * @author mustafa
 */
public class IntBuffer extends Buffer {

    public IntBuffer allocate(int capacity) {
        return new IntBuffer(new int[capacity]);
    }

    public IntBuffer allocateDirect(int capacity) {
        return new IntBuffer(capacity);
    }

    IntBuffer(int capacity) {
        super(capacity, CLib.malloc(capacity * CLib.INT_SIZE), null, true);
    }

    IntBuffer(int[] array) {
        super(array.length, VoidPtr.fromAnyArray(array), array, false);
    }

    IntBuffer(ByteBuffer buffer) {
        super(buffer.remaining() / CLib.INT_SIZE,
                NativeCode.VoidPtr("((char*)%s)+%s", buffer.ptr, buffer.position),
                buffer.array,
                false);
        this.buffer = buffer;
        this.order = buffer.order;

    }

    public final int get() {
        if (position == limit) {
            throw new BufferUnderflowException();
        }
        return NativeCode.Int("((JINT*)%s)[%s]", ptr, position++);
    }

    public final int get(int index) {
        checkIndex(index);
        return NativeCode.Int("((JINT*)%s)[%s]", ptr, index);
    }

    public IntBuffer put(int c) {
        if (isReadOnly) {
            throw new ReadOnlyBufferException();
        }
        if (position == limit) {
            throw new BufferOverflowException();
        }
        NativeCode.Void("((JINT*)%s)[%s] = %s", ptr, position++, c);
        return this;
    }

    public IntBuffer put(int index, int c) {
        if (isReadOnly) {
            throw new ReadOnlyBufferException();
        }
        checkIndex(index);
        NativeCode.Void("((JINT*)%s)[%s] = %s", ptr, index, c);
        return this;
    }

    public IntBuffer put(int[] src, int srcOffset, int intCount) {
        if (isReadOnly) {
            throw new ReadOnlyBufferException();
        }
        if (intCount > remaining()) {
            throw new BufferOverflowException();
        }
        CLib.memmove(ptr, position * CLib.INT_SIZE, VoidPtr.fromAnyArray(src), srcOffset * CLib.INT_SIZE, intCount * CLib.INT_SIZE);
        position += intCount;
        return this;
    }
    

}

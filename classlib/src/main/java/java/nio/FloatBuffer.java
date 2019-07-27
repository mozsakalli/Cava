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
public class FloatBuffer extends Buffer {

    public FloatBuffer allocate(int capacity) {
        return new FloatBuffer(new float[capacity]);
    }

    public FloatBuffer allocateDirect(int capacity) {
        return new FloatBuffer(capacity);
    }

    FloatBuffer(int capacity) {
        super(capacity, CLib.malloc(capacity * CLib.FLOAT_SIZE), null, true);
    }

    FloatBuffer(float[] array) {
        super(array.length, VoidPtr.fromAnyArray(array), array, false);
    }

    FloatBuffer(ByteBuffer buffer) {
        super(buffer.remaining() / CLib.FLOAT_SIZE,
                NativeCode.VoidPtr("((char*)%s)+%s", buffer.ptr, buffer.position),
                buffer.array,
                false);
        this.buffer = buffer;
        this.order = buffer.order;

    }

    public FloatBuffer put(float[] src, int srcOffset, int floatCount) {
        if (isReadOnly) {
            throw new ReadOnlyBufferException();
        }
        if (floatCount > remaining()) {
            throw new BufferOverflowException();
        }
        CLib.memcpy(ptr, position * CLib.FLOAT_SIZE, VoidPtr.fromAnyArray(array), srcOffset * CLib.FLOAT_SIZE, floatCount * CLib.FLOAT_SIZE);
        position += floatCount;
        return this;
    }
}

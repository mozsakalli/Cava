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
public class ShortBuffer extends Buffer {

    public ShortBuffer allocate(int capacity) {
        return new ShortBuffer(new short[capacity]);
    }

    public ShortBuffer allocateDirect(int capacity) {
        return new ShortBuffer(capacity);
    }

    ShortBuffer(int capacity) {
        super(capacity, CLib.malloc(capacity * CLib.SHORT_SIZE), null, true);
    }

    ShortBuffer(short[] array) {
        super(array.length, VoidPtr.fromAnyArray(array), array, false);
    }

    ShortBuffer(ByteBuffer buffer) {
        super(buffer.remaining() / CLib.SHORT_SIZE,
                NativeCode.VoidPtr("((char*)%s)+%s", buffer.ptr, buffer.position),
                buffer.array,
                false);
        this.buffer = buffer;
        this.order = buffer.order;
    }

    public ShortBuffer put(short[] src, int srcOffset, int shortCount) {
        if (isReadOnly) {
            throw new ReadOnlyBufferException();
        }
        if (shortCount > remaining()) {
            throw new BufferOverflowException();
        }
        CLib.memcpy(ptr, position * CLib.SHORT_SIZE, VoidPtr.fromAnyArray(src), srcOffset * CLib.SHORT_SIZE, shortCount * CLib.SHORT_SIZE);
        position += shortCount;
        return this;
    }
    /*
    @Override
    public VoidPtr getPositionAddress() {
        return NativeCode.VoidPtr("((char*)%s) + (%s*sizeof(jshort))", ptr, position);
    }*/
    
}

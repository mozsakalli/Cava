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

package com.cava.graphics.opengl;

import cava.platform.NativeCode;
import com.cava.graphics.BufferUsage;
import com.cava.graphics.VertexBuffer;
import com.cava.graphics.VertexStructure;

/**
 *
 * @author mustafa
 */
public class OpenGLVertexBuffer extends VertexBuffer {
    
    float[] buffer;
    int handle = -1;
    int stride;
    BufferUsage usage;
    
    OpenGLVertexBuffer(int capacity,VertexStructure structure, BufferUsage usage) {
        this.usage = usage;
        buffer = new float[capacity];
    }

    @Override
    public int capacity() {
        return buffer.length;
    }

    @Override
    public void set(int offset, float x) {
        buffer[offset] = x;
    }

    @Override
    public void set(int offset, int x) {
        buffer[offset] = x;
    }
    
    @Override
    public void set(int offset, float x, float y) {
        buffer[offset] = x;
        buffer[offset+1] = y;
    }

    @Override
    public void set(int offset, float x, float y, float z) {
        buffer[offset] = x;
        buffer[offset+1] = y;
        buffer[offset+2] = z;
    }

    @Override
    public void set(int offset, float x, float y, float z, float w) {
        buffer[offset] = x;
        buffer[offset+1] = y;
        buffer[offset+2] = z;
        buffer[offset+3] = w;
    }
}

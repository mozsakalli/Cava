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

import com.cava.graphics.IndexBuffer;

/**
 *
 * @author mustafa
 */
public class OpenGLIndexBuffer extends IndexBuffer {
    
    short[] buffer;
    int handle = -1;
    
    protected OpenGLIndexBuffer(int capacity) {
        buffer = new short[capacity];
    }
}

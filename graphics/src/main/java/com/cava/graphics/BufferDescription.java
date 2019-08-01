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

package com.cava.graphics;

/**
 *
 * @author mustafa
 */
public class BufferDescription {
    
    // The desired capacity, in bytes, of the DeviceBuffer
    public int sizeInBytes;
    
    // Indicates how the DeviceBuffer will be used.
    public BufferUsage usage;
    
    // For structured buffers, this value indicates the size in bytes of a single structure element, and must be non-zero.
    // For all other buffer types, this value must be zero.    
    public int structureByteStride;
}

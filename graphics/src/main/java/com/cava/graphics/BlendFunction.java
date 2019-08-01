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
public enum BlendFunction {
    
    // Source and destination are added.
    Add(0),
    // Destination is subtracted from source.
    Subtract(1),
    // Source is subtracted from destination.
    ReverseSubtract(2),
    // The minimum of source and destination is selected.
    Minimum(3),
    // The maximum of source and destination is selected.
    Maximum(4);
    
    int value;
    BlendFunction(int value) { this.value = value; }
}

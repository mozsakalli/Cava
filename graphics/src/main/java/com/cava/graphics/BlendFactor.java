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
public enum BlendFactor {
    
    // Each component is multiplied by 0.
    Zero(0),
    // Each component is multiplied by 1.
    One(1),
    // Each component is multiplied by the source alpha component.
    SourceAlpha(2),
    // Each component is multiplied by (1 - source alpha).
    InverseSourceAlpha(3),
    // Each component is multiplied by the destination alpha component.
    DestinationAlpha(4),
    // Each component is multiplied by (1 - destination alpha).
    InverseDestinationAlpha(5),
    // Each component is multiplied by the matching component of the source color.
    SourceColor(6),
    // Each component is multiplied by (1 - the matching component of the source color).
    InverseSourceColor(7),
    /// Each component is multiplied by the matching component of the destination color.
    DestinationColor(8),
    // Each component is multiplied by (1 - the matching component of the destination color).
    InverseDestinationColor(9),
    // Each component is multiplied by the matching component in constant factor specified in <see cref="BlendStateDescription.BlendFactor"/>.
    BlendFactor(10),
    // Each component is multiplied by (1 - the matching component in constant factor specified in <see cref="BlendStateDescription.BlendFactor"/>).
    InverseBlendFactor(11)
    ;
    int value;
    BlendFactor(int value) { this.value = value; }
}

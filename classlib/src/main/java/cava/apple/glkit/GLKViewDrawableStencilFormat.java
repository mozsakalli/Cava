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

package cava.apple.glkit;

/**
 *
 * @author mustafa
 */
public enum GLKViewDrawableStencilFormat {
 /*<values>*/
    None(0L),
    _8(1L);
    /*</values>*/

    private final long n;

    private /*<name>*/GLKViewDrawableStencilFormat/*</name>*/(long n) { this.n = n; }
    public long value() { return n; }
    public static /*<name>*/GLKViewDrawableStencilFormat/*</name>*/ valueOf(long n) {
        for (/*<name>*/GLKViewDrawableStencilFormat/*</name>*/ v : values()) {
            if (v.n == n) {
                return v;
            }
        }
        throw new IllegalArgumentException("No constant with value " + n + " found in " 
            + /*<name>*/GLKViewDrawableStencilFormat/*</name>*/.class.getName());
    }

}

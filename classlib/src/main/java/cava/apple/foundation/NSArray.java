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

package cava.apple.foundation;

import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
public class NSArray extends NSObject {
    
    public NSArray(){}
    NSArray(VoidPtr nativePeer) {
        super(nativePeer);
    }
    NSArray(VoidPtr nativePeer, boolean noOwner) {
        super(nativePeer, noOwner);
    }
    
    public int getCount() {
        return NativeCode.Int("((NSArray*)%s).count", nativePeer);
    }
    
    public <T extends NSObject> void getObjectAtIndex(int index, T object) {
        object.setNativePeer(NativeCode.VoidPtr("[(NSArray*)%s objectAtIndex:%s]", nativePeer, index));
        object.setNoOwner(true);
    }
}

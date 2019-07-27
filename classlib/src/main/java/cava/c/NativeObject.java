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

package cava.c;

/**
 *
 * @author mustafa
 */
public abstract class NativeObject {
    
    // pointer to native object
    protected VoidPtr nativePeer;
    
    // this object is sub value of another object
    protected boolean noOwner;
    
    public abstract void dispose();

    public VoidPtr getNativePeer() { return nativePeer; }
    
    public void setNativePeer(VoidPtr handle) {
        if(nativePeer != null && !noOwner) dispose();
        nativePeer = handle;
    }
    
    public void setNoOwner(boolean sub) {
        noOwner = sub;
    }
    
    @Override
    protected void finalize() throws Throwable {
        super.finalize();
        if(!noOwner)
            dispose();
    }
    
}

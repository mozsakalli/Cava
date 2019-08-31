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

import cava.annotation.Include;
import cava.annotation.Keep;
import cava.annotation.ObjC;
import cava.c.NativeObject;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */

@Include("<objc/runtime.h> <Foundation/Foundation.h>")
@ObjC
@Keep
public class NSObject<T> extends NativeObject {
    
    public NSObject(){
        nativePeer = NativeCode.VoidPtr("[%s alloc]", getObjCClass(getClass()));
    }
    
    public T init() {
        NativeCode.Void("[(NSObject*)%s init]", nativePeer);
        return (T)this;
    }
    
    public NSObject(VoidPtr handle) { this(handle, false); }
    public NSObject(VoidPtr handle, boolean sub) {
        this.nativePeer = handle;
        this.noOwner = sub;
        //if(!getClass().getName().contains("NSString"))
        //    System.out.println("-- nsobject-init: "+getClass().getName());
    }
    
    public boolean respondsToSelector(Selector selector) {
        return NativeCode.Bool("[(NSObject*)%s respondsToSelector:*((SEL*)%s)]", nativePeer, selector.nativePeer);
    }
    
    @Override
    public void dispose() {
        if(nativePeer != null) {
            NativeCode.Void("[(NSObject*)%s dealloc]", nativePeer );
            nativePeer = null;
        }
    }

    public static String getObjectiveCName(Class cls) {
        return cls.getName().replace('.', '_').replace('$', '_') + "_ObjC";
    }
    
    public Class getObjCClass() {
        return getObjCClass(getClass());
    }
    
    // return value is not real java class
    // dont use it!!
    public static Class getObjCClass(Class cls) {
        return NativeCode.Class("NSClassFromString((NSString*)((JvmClass*)%s)->objcClass)", cls);
    }
    
    public static <T extends NSObject> T alloc(Class<? extends NSObject> cls) {
        NSObject result = (NSObject)cls.newInstance();
        result.nativePeer = NativeCode.VoidPtr("[%s alloc]", getObjCClass(cls));
        return (T)result;
    }
}

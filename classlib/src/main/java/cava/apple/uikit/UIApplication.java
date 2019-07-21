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

package cava.apple.uikit;

import cava.annotation.Keep;
import cava.annotation.ObjC;
import cava.apple.foundation.NSObject;
import cava.apple.foundation.NSString;
import cava.c.CharPtr;
import cava.c.CharPtrPtr;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@ObjC
public class UIApplication extends UIResponder {
    
    @Keep private static UIApplicationDelegate currentDelegate;
    @Keep private static UIApplication currentApplication;
    
    public static <P extends UIApplication, D extends NSObject & UIApplicationDelegate> 
    void main(String[] args, Class<P> principalClass, Class<D> delegateClass) {
        int argc = 0;
        CharPtrPtr argv = null;
        
        String principalClassName = principalClass != null ? NSObject.getObjCClassName(principalClass)  : null;
        Class dc = delegateClass;
        while(dc != null && dc.getSuperclass() != NSObject.class)
            dc = dc.getSuperclass();
        String delegateClassName = dc != null ? NSObject.getObjCClassName(dc) : null;
        
        if(args != null && args.length > 0) {
            argv = CharPtrPtr.alloc(args.length);
            for(int i=0; i<args.length; i++) {
                argv.set(i, CharPtr.allocAsciiZ(args[i]));
            }
        }
        
        currentDelegate = (UIApplicationDelegate)delegateClass.newInstance();
        System.out.println("principal: "+principalClassName+"  delegate:"+delegateClassName);
        main(argc, argv, principalClassName, delegateClassName);
    }
    
    public static void main(int argc, CharPtrPtr argv, String principal, String delegate) {
        NativeCode.Void("UIApplicationMain(%s, %s, %s, %s)", 
                argc, 
                argv, 
                principal != null ? new NSString(principal).toNative() : null,
                delegate != null ? new NSString(delegate).toNative() : null);
    }
    
    public static UIApplication getSharedApplication() {
        return currentApplication;
    }
    
    public boolean getIdleTimerDisabled() {
        return NativeCode.Bool("[(UIApplication*)%s isIdleTimerDisabled]", handle);
    }
    
    public void setIdleTimerDisabled(boolean disabled) {
        NativeCode.Void("[(UIApplication*)%s setIdleTimerDisabled:%s]", handle, disabled);
    }
    
}

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

package com.cava.debugger.handler.objectreference;

import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import java.lang.reflect.Method;

/**
 *
 * @author mustafa
 */
public class ObjRefInvokeMethodHandler extends ObjectReferenceHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long objectId = packet.readLong();
        long threadId = packet.readLong();
        long classId = packet.readLong();
        long methodId = packet.readLong();
        try {
            Object object = NativeCode.Object("(jobject)%s", objectId);
            Thread thread = NativeCode.Thread("(jobject)%s", threadId);
            Class cls = NativeCode.Class("(jobject)%s", classId);
            Method method = (Method)NativeCode.Object("(jobject)%s", methodId);
            System.out.println("--- invoke: "+cls.getName()+"."+method.getName()+" ["+method.getDeclaringClass()+"]");
            JdwpUtil.writeValue(out, String.valueOf(object), String.class);
        } catch(Exception e){
            
        }
        
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 6;
    }
    
}

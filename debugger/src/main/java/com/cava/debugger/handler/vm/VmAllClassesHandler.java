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

package com.cava.debugger.handler.vm;

import cava.c.VoidPtrPtr;
import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import com.cava.debugger.VM;

/**
 *
 * @author mustafa
 */
public class VmAllClassesHandler extends VmHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        int count = 0;
        int countPtr = out.ptr();
        out.writeInt(0); //will set later
        
        VoidPtrPtr ptr = NativeCode.VoidPtrPtr("JVMCLASSPATH");
        int index = 0;
        Object value = ptr.get(index);
        while(value != null) {
            Class cls = (Class)value;
            if(cls.isPrimitive()) continue;
            out.writeByte(JdwpUtil.jdwpTypeTag(cls));
            // typeID
            out.writeLong(VM.getClassReference(cls));
            // signature
            out.writeString(JdwpUtil.toSignature(cls));
            //Generic info
            if(isGeneric())
                out.writeString("");
            // status
            out.writeInt(JdwpConsts.ClassStatus.VERIFIED | JdwpConsts.ClassStatus.PREPARED | JdwpConsts.ClassStatus.INITIALIZED);            
            
            count++;
            
            value = ptr.get(index++);
        }
        out.setInt(countPtr, count);
        
        return JdwpConsts.Error.NONE;
    }

    boolean isGeneric() {
        return false;
    }
    
    @Override
    public int getCommand() {
        return 3;
    }
    
}

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

package com.cava.debugger.handler.referencetype;

import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import com.cava.debugger.VM;
import java.lang.reflect.Field;

/**
 *
 * @author mustafa
 * Returns the value of one or more static fields of the reference type.
 * Each field must be member of the reference type or one of its superclasses,
 * superinterfaces, or implemented interfaces. Access control is not enforced; for example,
 * the values of private fields can be obtained.
 */
public class RefTypeGetValuesHandler extends RefTypeHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        try {
            Class cls = VM.getClassByReference(packet.readLong());
            
            int count = packet.readInt();
            out.writeInt(count);
            for(int i=0; i<count; i++) {
                Field field = (Field)NativeCode.Object("(JOBJECT)%s", packet.readLong());
                JdwpUtil.writeValue(out, field.get(null), field.getType());
            }
        } catch(Exception e){}
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 6;
    }
    
}

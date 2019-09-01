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
import java.lang.reflect.Field;

/**
 *
 * @author mustafa
 */
public class ObjRefGetValuesHandler extends ObjectReferenceHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        try {
            long ref = packet.readLong();
            Object obj = NativeCode.Object("(JOBJECT)%s", ref);
            
            Class cls = obj.getClass();
            int count = packet.readInt();
            out.writeInt(count);
            for(int i=0; i<count; i++) {
                Field field = (Field)NativeCode.Object("(JOBJECT)%s", packet.readLong());
                Object value = field.get(obj);
                long vaddr = NativeCode.Long("(JLONG)%s", value);
                JdwpUtil.writeValue(out, field.get(obj), field.getType());
            }
        } catch(Exception e){}
        return JdwpConsts.Error.NONE;
    }
    
    boolean isStatic() {
        return false;
    }
    
    @Override
    public int getCommand() {
        return 2;
    }
    
}

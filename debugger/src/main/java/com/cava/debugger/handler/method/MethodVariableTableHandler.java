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

package com.cava.debugger.handler.method;

import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;

/**
 *
 * @author mustafa
 */
public class MethodVariableTableHandler extends MethodHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long refTypeId = packet.readLong();
        long methodId = packet.readLong();    
        try {
            int argCount = NativeCode.Int("((JvmMethod*)%s)->argCount", methodId);
            int localCount = NativeCode.Int("((JvmMethod*)%s)->localCount", methodId);
            out.writeInt(argCount);
            out.writeInt(argCount + localCount);
            for(int i=0; i<argCount+localCount; i++) {
                int startLine = NativeCode.Int("((JvmMethod*)%s)->locals[%s].startLine", methodId, i);
                int endLine = NativeCode.Int("((JvmMethod*)%s)->locals[%s].endLine", methodId, i);
                out.writeLong(startLine);
                out.writeString(NativeCode.String("((JvmMethod*)%s)->locals[%s].name", methodId, i));
                Class type = NativeCode.Class("((JvmMethod*)%s)->locals[%s].type", methodId, i);
                out.writeString(JdwpUtil.toSignature(type));
                if (shallWriteEmptyGeneric()) {
                    out.writeString("");
                }    
                out.writeInt(endLine - startLine +1);
                out.writeInt(i);
            }
            return JdwpConsts.Error.NONE;
        } catch(Exception e){
            
        }
        return JdwpConsts.Error.INVALID_METHODID;
    }

    @Override
    public int getCommand() {
        return 2;
    }
    
    protected boolean shallWriteEmptyGeneric() {
        // subclasses to overload
        return false;
    }    
}

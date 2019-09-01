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

package com.cava.debugger.handler.stackframe;

import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;

/**
 *
 * @author mustafa
 */
public class StackFrameGetValuesHandler extends StackFrameHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long threadId = packet.readLong();
        int frameId = (int)packet.readLong() - 0xff;
        int slots = packet.readInt();        
        
        try {
            NativeCode.Void("union JvmLocalVariable* locals = &((JvmThread*)%s)->frames[%s].locals[0]", threadId, frameId);
            NativeCode.Void("JvmLocalVariableInfo* localInfos = ((JvmThread*)%s)->frames[%s].method->locals", threadId, frameId);
            int localInfoCount = NativeCode.Int("((JvmThread*)%s)->frames[%s].method->localCount", threadId, frameId);
            
            out.writeInt(slots);
            for(int i=0; i<slots; i++) {
                int index = packet.readInt();
                int tag = packet.readByte();
                Class varType = NativeCode.Class("localInfos[%s].type", index);
                out.writeByte(varType == String.class ? JdwpConsts.Tag.STRING : tag);
                switch(tag) {
                    case 'L':
                    case '[':
                        long ref = NativeCode.Long("(JLONG)locals[%s].vJOBJECT",index);
                        out.writeLong(ref);
                        break;
                    case 'B':
                    case 'Z':
                        out.writeByte(NativeCode.Byte("locals[%s].vJBYTE",index));
                        break;
                    case 'C':
                    case 'S':
                        out.writeShort(NativeCode.Byte("locals[%s].vJSHORT",index));
                        break;
                    case 'I':
                        out.writeInt(NativeCode.Int("locals[%s].vJINT",index));
                        break;
                    case 'F':
                        out.writeFloat(NativeCode.Byte("locals[%s].vJFLOAT",index));
                        break;
                    case 'J':
                        out.writeLong(NativeCode.Byte("locals[%s].vJLONG",index));
                        break;
                    case 'D':
                        out.writeDouble(NativeCode.Byte("locals[%s].vJDOUBLE",index));
                        break;
                        
                    default:
                        System.out.println("[DEBUGGER] unknown frame: "+index+"  "+tag+"  "+((char)tag));
                }
                
            }
            return JdwpConsts.Error.NONE;
        } catch(Exception e){}
        
        return JdwpConsts.Error.INVALID_OBJECT;

    }

    @Override
    public int getCommand() {
        return 1;
    }
    
}

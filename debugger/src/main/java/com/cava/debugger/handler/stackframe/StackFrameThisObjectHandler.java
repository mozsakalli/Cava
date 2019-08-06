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
public class StackFrameThisObjectHandler extends StackFrameHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long threadId = packet.readLong();
        int frameId = (int)packet.readLong() - 0xff;
        
        try {
            NativeCode.Void("union JvmLocalVariable* locals = &((JvmThread*)%s)->frames[%s].locals[0]", threadId, frameId);
            NativeCode.Void("JvmLocalVariableInfo* localInfos = ((JvmThread*)%s)->frames[%s].method->locals", threadId, frameId);
            int localInfoCount = NativeCode.Int("((JvmThread*)%s)->frames[%s].method->localCount", threadId, frameId);
            Object thiz = null;
            for(int i=0; i<localInfoCount; i++) {
                String name = NativeCode.String("localInfos[%s].name", i);
                if(name != null && name.equals("this")) {
                    thiz = NativeCode.Object("locals[%s].vJOBJECT", i);
                    System.out.println("!!!this found!!! "+thiz);
                    break;
                }
            }
            out.writeByte('L');
            out.writeLong(NativeCode.Long("(JLONG)%s", thiz));
            return JdwpConsts.Error.NONE;
        } catch(Exception e){}
        return JdwpConsts.Error.INVALID_OBJECT;
    }

    @Override
    public int getCommand() {
        return 3;
    }

}

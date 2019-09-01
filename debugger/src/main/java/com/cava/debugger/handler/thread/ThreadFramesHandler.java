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

package com.cava.debugger.handler.thread;

import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import com.cava.debugger.VM;
import java.lang.reflect.Method;

/**
 *
 * @author mustafa
 */
public class ThreadFramesHandler extends ThreadHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long threadId = packet.readLong();
        int startFrame = packet.readInt();
        int length = packet.readInt();       
        try {
            int suspendCount = VM.getThreadSuspendCount(threadId);
            if(suspendCount == 0)
                return JdwpConsts.Error.THREAD_NOT_SUSPENDED;
            
            int framePtr = VM.getThreadFramePtr(threadId);
            startFrame = framePtr - 1;
            int lastFrame = length <= 0 ? 0 : startFrame - length + 1;
            if(lastFrame < 0) lastFrame = 0;
            out.writeInt(startFrame - lastFrame + 1);
            for(int i=startFrame; i>=lastFrame; i--) {
                out.writeLong(i + 0xff);
                Method method = (Method)NativeCode.Object("((JvmThread*)%s)->frames[%s].method", threadId, i);
                int line = NativeCode.Int("((JvmThread*)%s)->frames[%s].line", threadId, i);
                out.writeByte(JdwpUtil.jdwpTypeTag(method.getDeclaringClass()));
                out.writeLong(VM.getClassReference(method.getDeclaringClass()));
                out.writeLong(VM.getMethodReference(method));
                out.writeLong(line);
            }
            
            return JdwpConsts.Error.NONE;    
        }catch(Exception e){
            e.printStackTrace();
        }
        return JdwpConsts.Error.INVALID_THREAD;
    }

    @Override
    public int getCommand() {
        return 6;
    }
    
}

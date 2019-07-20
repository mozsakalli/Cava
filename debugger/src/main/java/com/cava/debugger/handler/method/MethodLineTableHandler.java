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
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import com.cava.debugger.VM;
import com.cava.debugger.JdwpConsts;
import java.lang.reflect.Method;

/**
 *
 * @author mustafa
 */
public class MethodLineTableHandler extends MethodHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long refTypeId = packet.readLong();
        long methodId = packet.readLong();    
        Method method = VM.getMethodByReference(methodId);
        if(method == null)
            return JdwpConsts.Error.INVALID_METHODID;

        int minLine = NativeCode.Int("((JvmMethod*)%s)->minLine", method);
        if(minLine == -1) 
            return JdwpConsts.Error.INVALID_METHODID;
        int maxLine = NativeCode.Int("((JvmMethod*)%s)->maxLine", method);
        out.writeLong(minLine);
        out.writeLong(maxLine);
        out.writeInt(maxLine - minLine + 1);
        for(int i=minLine; i<=maxLine; i++) {
            out.writeLong(i);
            out.writeInt(i);
        }
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 1;
    }
    
}

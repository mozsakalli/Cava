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

import com.cava.debugger.Debugger;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import com.cava.debugger.VM;

/**
 *
 * @author mustafa
 */
public class VmAllThreadsHandler extends VmHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        Thread[] threads = VM.getAllThreads();
        if(threads == null)
            out.writeInt(0);
        else {
            int ptr = out.ptr();
            out.writeInt(0);
            int count = 0;
            for(int i=0; i<threads.length; i++) {
                if(threads[i] != null && !Debugger.isDebuggerThread(threads[i])) {
                    out.writeLong(threads[i].getId());
                    count++;
                }
            }
            out.setInt(ptr, count);
        }
        
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 4;
    }
    
}

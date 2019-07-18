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

package debugger.handler.thread;

import debugger.JdwpConsts;
import debugger.OutBuffer;
import debugger.Packet;
import debugger.VM;

/**
 *
 * @author mustafa
 */
public class ThreadResumeHandler extends ThreadHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long threadId = packet.readLong();
        try {
            VM.resumeThread(threadId);
        } catch(Exception e){}
        
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 3;
    }
    
}

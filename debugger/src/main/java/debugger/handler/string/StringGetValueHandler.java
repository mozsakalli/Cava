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

package debugger.handler.string;

import cava.platform.NativeCode;
import debugger.JdwpConsts;
import debugger.JdwpHandler;
import debugger.OutBuffer;
import debugger.Packet;

/**
 *
 * @author mustafa
 */
public class StringGetValueHandler implements JdwpHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        try {
            String value = NativeCode.String("(jobject)%s", packet.readLong());
            out.writeString(value);
        } catch(Exception e){
            
        }
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommandSet() {
        return 10;
    }

    @Override
    public int getCommand() {
        return 1;
    }
    
}

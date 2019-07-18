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

package debugger.handler.array;

import cava.platform.NativeCode;
import debugger.JdwpConsts;
import debugger.OutBuffer;
import debugger.Packet;

/**
 *
 * @author mustafa
 */
public class ArrayGetLengthHandler extends ArrayHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        try {
            long ref = packet.readLong();
            int len = NativeCode.Int("JvmArrayLen(%s)", ref);
            out.writeInt(len);
        } catch(Exception e){}
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 1;
    }
    
}

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

package debugger.handler.referencetype;

import cava.platform.NativeCode;
import debugger.JdwpConsts;
import debugger.OutBuffer;
import debugger.Packet;

/**
 *
 * @author mustafa
 */
public class RefTypeSourceFileHandler extends RefTypeHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long referenceTypeID = packet.readLong();
        try {
            if(referenceTypeID <= 0)
                return JdwpConsts.Error.INVALID_CLASS;
            String sourceFile = NativeCode.String("((JvmClass*)%s)->sourceFile", referenceTypeID);
            out.writeString(sourceFile == null ? "" : sourceFile);
            return JdwpConsts.Error.NONE;
        } catch(Exception e){
            
        }
        return JdwpConsts.Error.INVALID_CLASS;
    }

    @Override
    public int getCommand() {
        return 7;
    }
    
}

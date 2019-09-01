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

package com.cava.debugger.handler.array;

import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;

/**
 *
 * @author mustafa
 */
public class ArrayGetValuesHandler extends ArrayHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long arrayId = packet.readLong();
        int firstIndex = packet.readInt();
        int length = packet.readInt();
        try {
            Object array = NativeCode.Object("(JOBJECT)%s", arrayId);
            Class elementType = array.getClass().getComponentType();
            byte simpleType = JdwpUtil.jdwpSimpleType(elementType); 
            out.writeByte(simpleType);
            out.writeInt(length);
            if(elementType.isPrimitive()) {
                switch(simpleType) {
                    case 'B':
                    case 'Z':
                        for(int i=firstIndex; i<firstIndex+length; i++)
                            out.writeByte(NativeCode.Byte("JvmArrayGet_B(%s,%s)", array, i));
                        break;
                        
                    case 'C':
                    case 'S':
                        for(int i=firstIndex; i<firstIndex+length; i++)
                            out.writeShort(NativeCode.Short("JvmArrayGet_S(%s,%s)", array, i));
                        break;

                    case 'I':
                    case 'F':
                        for(int i=firstIndex; i<firstIndex+length; i++)
                            out.writeInt(NativeCode.Int("JvmArrayGet_I(%s,%s)", array, i));
                        break;
                        
                    default:
                        for(int i=firstIndex; i<firstIndex+length; i++)
                            out.writeLong(NativeCode.Long("JvmArrayGet_J(%s,%s)", array, i));
                        break;
                }
            } else {
                for(int i=firstIndex; i<firstIndex+length; i++) {
                    Object o = NativeCode.Object("JvmArrayGet_O(%s,%s)", array, i);
                    JdwpUtil.writeValue(out, o, o == null ? Object.class : o.getClass());
                }
            }
            
        } catch(Exception e) {}
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 2;
    }
    
}

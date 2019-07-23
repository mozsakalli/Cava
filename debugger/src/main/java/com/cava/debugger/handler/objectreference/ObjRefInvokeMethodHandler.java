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

package com.cava.debugger.handler.objectreference;

import cava.platform.NativeCode;
import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import java.lang.reflect.Method;

/**
 *
 * @author mustafa
 */
public class ObjRefInvokeMethodHandler extends ObjectReferenceHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        long objectId = packet.readLong();
        long threadId = packet.readLong();
        long classId = packet.readLong();
        long methodId = packet.readLong();
        int argCount = packet.readInt();
        byte[] tags = new byte[argCount];
        Object[] args = new Object[argCount];
        readTaggedArguments(tags, args, packet);
        try {
            Object object = NativeCode.Object("(jobject)%s", objectId);
            Thread thread = NativeCode.Thread("(jobject)%s", threadId);
            Class cls = NativeCode.Class("(jobject)%s", classId);
            Method method = (Method)NativeCode.Object("(jobject)%s", methodId);
            //todo: call on correct thread
            Object result = method.invoke(object, args);
            System.out.println("--- invoke: "+cls.getName()+"."+method.getName()+" ["+method.getDeclaringClass()+"] -> "+result);
            JdwpUtil.writeValue(out, result, method.getReturnType());
        } catch(Exception e){
            
        }
        
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 6;
    }
    
    public static void readTaggedArguments(byte[] tags, Object[] args, Packet payload) {
        for (int idx = 0; idx < args.length; idx ++) {
            int tag = payload.readByte();
            Object v;
            switch (tag) {
                case JdwpConsts.Tag.BOOLEAN: v = payload.readByte() != 0; break;
                case JdwpConsts.Tag.BYTE: v = payload.readByte(); break;
                case JdwpConsts.Tag.CHAR: v = payload.readShort(); break;
                case JdwpConsts.Tag.SHORT: v = payload.readShort(); break;
                case JdwpConsts.Tag.INT: v = payload.readInt(); break;
                case JdwpConsts.Tag.LONG: v = payload.readLong(); break;
                case JdwpConsts.Tag.FLOAT: v = payload.readFloat(); break;
                case JdwpConsts.Tag.DOUBLE: v = payload.readDouble(); break;

                case JdwpConsts.Tag.ARRAY:
                case JdwpConsts.Tag.OBJECT:
                case JdwpConsts.Tag.STRING:
                case JdwpConsts.Tag.THREAD:
                case JdwpConsts.Tag.THREAD_GROUP:
                case JdwpConsts.Tag.CLASS_LOADER:
                case JdwpConsts.Tag.CLASS_OBJECT:
                    v = NativeCode.Object("(jobject)%s",payload.readLong());
                    break;
                default:
                    throw new RuntimeException("Invalid tag");
            }

            tags[idx] = (byte)tag;
            args[idx] = v;
        }
    }    
}

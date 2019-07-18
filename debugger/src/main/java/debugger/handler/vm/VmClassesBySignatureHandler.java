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

package debugger.handler.vm;

import debugger.JdwpConsts;
import debugger.JdwpUtil;
import debugger.OutBuffer;
import debugger.Packet;
import debugger.VM;

/**
 *
 * @author mustafa
 */
public class VmClassesBySignatureHandler extends VmHandler {

    static long id = 954325678l;
    
    @Override
    public int handle(Packet packet, OutBuffer out) {
        String signature = packet.readString();
        boolean invalid = signature.contains("com/") || signature.contains("org/") || signature.contains("jdk/");
        
        if(!invalid && signature != null && !signature.isEmpty()) {
            if(signature.charAt(0) == '[') {
                int p=0;
                while(p<signature.length() && signature.charAt(p)=='[') p++;
                if(signature.charAt(p) == 'L') {
                    signature = signature.substring(0,p) + signature.substring(p+1, signature.length()-1);
                }
            } else if(signature.charAt(0) == 'L') 
                signature = signature.substring(1, signature.length()-1);
            
            signature = signature.replace('/', '.');
            Class klass = VM.getClassByName(signature);
            
            if(klass == null) {
                out.writeInt(0);
            } else {
                //number of classes
                out.writeInt(1);
                //type tag
                out.writeByte(JdwpUtil.jdwpTypeTag(klass));
                //type ref id
                out.writeLong(VM.getClassReference(klass));
                //status, classes always initialized
                out.writeInt(JdwpConsts.ClassStatus.VERIFIED | JdwpConsts.ClassStatus.PREPARED | JdwpConsts.ClassStatus.INITIALIZED);
            }
        } else
        out.writeInt(0);
        
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 2;
    }
    
}

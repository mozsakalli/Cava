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

package com.cava.debugger.handler.eventrequest.events;

import com.cava.debugger.JdwpConsts;
import com.cava.debugger.JdwpUtil;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.VM;

/**
 *
 * @author mustafa
 */
public class ClassLoadedEventData extends EventData {
    Class cls;
    
    public ClassLoadedEventData(int eventKind, Thread thread, int requestId, Class cls) {
        super(eventKind, thread, requestId);
        this.cls = cls;
    }

    @Override
    public void dumpCustomData(OutBuffer packet) {
        packet.writeByte(JdwpUtil.jdwpTypeTag(cls));
        packet.writeLong(VM.getClassReference(cls));
        packet.writeString(cls.getName());
        packet.writeInt(JdwpConsts.ClassStatus.VERIFIED | JdwpConsts.ClassStatus.PREPARED | JdwpConsts.ClassStatus.INITIALIZED);
    }

    
}

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

import com.cava.debugger.OutBuffer;

/**
 *
 * @author mustafa
 */
public class EventData {
    private int eventKind;
    private Thread thread;
    int requestId;
    
    public EventData(int eventKind, Thread thread, int requestId) {
        this.eventKind = eventKind;
        this.thread = thread;
        this.requestId = requestId;
    }
    
    public void dump(OutBuffer packet) {
        packet.writeByte(eventKind);
        packet.writeInt(requestId);
        packet.writeLong(getThreadRefId());

        dumpCustomData(packet);
    }
    
    public void dumpCustomData(OutBuffer packet) {}
    
    public int eventKind() {
        return eventKind;
    }

    public Thread thread() {
        return thread;
    }    
    
    private final static String EXCEPTION_MSG = "Unexpected fields are accessed, check if filter is build properly";

    public long getThreadRefId() {
        return thread != null ? thread.getId() : 0;
    }

    public String getClassName() {
        throw new RuntimeException(EXCEPTION_MSG);
    }

    public long getClassTypeId() {
        throw new RuntimeException(EXCEPTION_MSG);
    }

    public long getInstanceId() {
        throw new RuntimeException(EXCEPTION_MSG);
    }

    public long getExceptionTypeId() {
        throw new RuntimeException(EXCEPTION_MSG);
    }

    public boolean isExceptionCaught() {
        throw new RuntimeException(EXCEPTION_MSG);
    }
    
    /*
    public VmStackTrace getStoppeedLocation() {
        throw new DebuggerException(EXCEPTION_MSG);
    }
    */
}
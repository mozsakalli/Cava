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

package debugger.handler.eventrequest.events;

import debugger.JdwpConsts;
import debugger.OutBuffer;
import debugger.VM;
import java.lang.reflect.Method;

/**
 *
 * @author mustafa
 */
public class ThreadStoppedEventData extends EventData {
    
    long methodId;
    int line;
    Throwable exception;
    boolean caught;
    
    public ThreadStoppedEventData(int eventKind, Thread thread, int requestId, long methodId, int line) {
        this(eventKind, thread, requestId, methodId, line, null, false);
    }

    public ThreadStoppedEventData(int eventKind, Thread thread, int requestId, long methodId, int line, Throwable exception, boolean caught) {
        super(eventKind, thread, requestId);
        this.methodId = methodId;
        this.line = line;
        this.exception = exception;
        this.caught = caught;
    }
    
    @Override
    public void dumpCustomData(OutBuffer packet) {
        Method method = VM.getMethodByReference(methodId);
        packet.writeByte(JdwpConsts.TypeTag.CLASS);
        packet.writeLong(VM.getClassReference(method.getDeclaringClass()));
        packet.writeLong(methodId);
        packet.writeLong(line);

        // exception
        if (exception != null) {
            /*todo
            packet.writeByte(JdwpConsts.Tag.OBJECT);
            packet.writeLong(exception.refId());

            // exception location
            packet.writeLong(location.classInfo().refId());
            packet.writeLong(location.methodInfo().refId());
            packet.writeLong(location.lineNumber());
            */
        }        
    }

}

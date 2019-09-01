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

package com.cava.debugger.handler.eventrequest;

import com.cava.debugger.JdwpConsts;
import com.cava.debugger.OutBuffer;
import com.cava.debugger.Packet;
import com.cava.debugger.VM;
import com.cava.debugger.handler.eventrequest.events.predicates.EventClassNameMatchPredicate;
import com.cava.debugger.handler.eventrequest.events.predicates.EventLocationPredicate;
import com.cava.debugger.handler.eventrequest.events.predicates.EventPredicate;
import com.cava.debugger.handler.eventrequest.events.predicates.EventStepModPredicate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class EventRequestSetHandler extends EventRequestHandler {
    
    @Override
    public int handle(Packet packet, OutBuffer out) {
        int kind = packet.readByte();
        int suspendPolicy = packet.readByte();
        int modifierCount = packet.readInt();
        
        List<EventPredicate> eventPredicates = new ArrayList();
        
        for(int i=0; i<modifierCount; i++) {
            int modKind = packet.readByte();
            boolean handled = true;
            
            switch(modKind) {
                case JdwpConsts.EventModifier.LOCATION_ONLY:
                    int tag = packet.readByte();
                    long classID = packet.readLong();
                    long methodID = packet.readLong();
                    long index = packet.readLong();
                    eventPredicates.add(new EventLocationPredicate(modKind, tag, classID, methodID, index));
                    break;
                    
                case JdwpConsts.EventModifier.STEP:
                    // Case Step - if modKind is 10
                    // Restricts reported step events to those which satisfy depth and size constraints. This modifier can
                    // be used with step event kinds only.
                    if (kind != JdwpConsts.EventKind.SINGLE_STEP)
                        return JdwpConsts.Error.INVALID_EVENT_TYPE;
                    
                    long stepThreadID = packet.readLong();
                    int stepSize = packet.readInt();
                    int stepDepth = packet.readInt();
                    eventPredicates.add(new EventStepModPredicate(modKind, stepThreadID, stepSize, stepDepth));
                    break;                    
                    
                case JdwpConsts.EventModifier.CLASS_MATCH:
                    // Case ClassMatch - if modKind is 5
                    // Restricts reported events to those for classes whose name matches the given restricted regular expression.
                    // Required class pattern. Matches are limited to exact matches of the given class pattern and matches of
                    // patterns that begin or end with '*'; for example, "*.Foo" or "java.*".
                    String matchPattern = packet.readString();
                    eventPredicates.add(new EventClassNameMatchPredicate(modKind, matchPattern, false));
                    break;   
                    
                default:
                    handled = false;
            }

            if(!handled) {
                System.out.println("Unknown modifier = "+modKind);
                //break;
            }
        }
        
        int id = VM.setEventRequest(kind, suspendPolicy, eventPredicates);
        out.writeInt(id);
        
        //System.out.println("eventReqSet: kind="+kind+" sp="+suspendPolicy+" mc="+modifierCount);
        
        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 1;
    }
    
}

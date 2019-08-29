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

package com.cava.debugger;

import cava.annotation.Keep;
import cava.c.VoidPtrPtr;
import cava.platform.NativeCode;
import com.cava.debugger.handler.eventrequest.events.ClassLoadedEventData;
import com.cava.debugger.handler.eventrequest.events.EventData;
import com.cava.debugger.handler.eventrequest.events.ThreadStoppedEventData;
import com.cava.debugger.handler.eventrequest.events.predicates.EventLocationPredicate;
import com.cava.debugger.handler.eventrequest.events.predicates.EventPredicate;
import com.cava.debugger.handler.eventrequest.events.predicates.EventStepModPredicate;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ozsak
 */
@Keep
public class VM  {

    public static long getObjectReference(Object c) {
        return NativeCode.Long("(JLONG)%s", c);
    }
    
    public static Class getClassByName(String name) {
        try {
            return Class.forName(name);
        } catch(Exception e){
        }
        return null;
    }

    public static Class getClassByReference(long refId) {
        return (Class)NativeCode.Object("(JvmClass*)%s", refId);
    }

    public static long getClassReference(Class c) {
        return NativeCode.Long("(JLONG)%s", c);
    }

    public static Method[] getMethodsByClass(Class c) {
        try {
            return c.getDeclaredMethods();
        }catch(Exception e){}
        return null;
    }

    public static long getMethodReference(Method m) {
        return NativeCode.Long("(JLONG)%s", m);
    }

    public static Method getMethodByReference(long refId) {
        return (Method)NativeCode.Object("%s", refId);
    }

    public static int getThreadSuspendCount(long threadId) {
        return NativeCode.Int("((JvmThread*)%s)->suspendCount", threadId);
    }
    
    public static int getThreadFramePtr(long threadId) {
        return NativeCode.Int("((JvmThread*)%s)->framePtr", threadId);
    }
    static Field threadListField;
    
    public static Thread[] getAllThreads() {
        try {
            if(threadListField == null)
                threadListField = Thread.class.getDeclaredField("THREADLIST");
            if(threadListField != null) {
                List<Thread> list = (List<Thread>)threadListField.get(null);
                if(list != null)
                    return list.toArray(new Thread[list.size()]);
            }
        } catch(Exception e){
            System.out.println(e.getMessage());
        }
        return null;
    }
    
    public static void resumeThread(long threadId) {
        NativeCode.Void("((JvmThread*)%s)->suspendCount = 0;" , threadId);
    }

    public static void resumeThread(Thread thread) {
        NativeCode.Void("((JvmThread*)%s)->suspendCount = 0;" , thread);
    }
    
    public static void resumeAllThreads() {
        Thread[] threads = getAllThreads();
        for(Thread t : threads)
            resumeThread(t);
    }

    public static void removeAllBreakpoints() {
        NativeCode.Void("JvmRemoveAllBreakpoints()");
    }
    
    static int eventRequestIdCounter;
    static class Event {
        public int id;
        public int eventKind;
        public int suspendPolicy;
        public List<EventPredicate> predicates;
        
        public <T extends EventPredicate> T predicateByKind(Class<T> kind) {
            for(EventPredicate predict : predicates)
                if(kind.isAssignableFrom(predict.getClass()))
                    return (T)predict;
            return null;
        }
    }
    static Map<Integer, Event> events = new HashMap();
    
    public static int setEventRequest(int eventKind, int suspendPolicy, List<EventPredicate> predicates) {
        int id = eventRequestIdCounter++;
        Event e = new Event();
        e.id = id;
        e.eventKind = eventKind;
        e.suspendPolicy = suspendPolicy;
        e.predicates = predicates;
        
        synchronized(events) {
            events.put(id, e);
        }
    
        switch(eventKind) {
            case JdwpConsts.EventKind.BREAKPOINT:
                System.out.println("set breakpoint");
                handleBreakpoint(e,id,true);
                break;
            
            case JdwpConsts.EventKind.SINGLE_STEP:
                System.out.println("single step");
                handleSingleStep(e,id);
                break;
                
            case JdwpConsts.EventKind.CLASS_PREPARE:
                handleClassPrepare(e,id);
                break;
                
            case JdwpConsts.EventKind.THREAD_START:
                Debugger.sendEventData(new EventData(JdwpConsts.EventKind.THREAD_START, getAllThreads()[0], id));
                break;
                
            default:
                System.out.println("Unknown Set eventKind = "+eventKind);
                if(predicates != null)
                    for(EventPredicate p : predicates) System.out.println(p.modifierKind()+":"+p.getClass());
        }
        return id;
    }
    
    public static void clearEventRequest(int eventKind, int requestId) {
        Event e = events.remove(requestId);
        if(e == null) return;
        
        switch(e.eventKind) {
            case JdwpConsts.EventKind.BREAKPOINT:
                handleBreakpoint(e, requestId, false);
                break;

            default:
                System.out.println("Unknown Clear eventKind = "+eventKind);
            
        }
    }
    
    static void handleBreakpoint(Event e, int requestId, boolean isSet) {
        System.out.println("--- add breakpoint --- "+isSet);
        EventLocationPredicate location = e.predicateByKind(EventLocationPredicate.class);
        if(location != null) {
            long methodId = location.methodId();
            Method m = (Method)NativeCode.Object("(JOBJECT)%s", methodId);
            System.out.println(m.getDeclaringClass().getName()+":"+m.getName());
            if(isSet)
                NativeCode.Void("JvmAddBreakpoint(%s,(JINT)%s, %s)", methodId, location.index(), requestId);
            else
                NativeCode.Void("JvmRemoveBreakpoint(%s,(JINT)%s)", methodId, location.index());
        }
    }
    
    static int activeStepEventId;
    static void handleSingleStep(Event e, int id) {
        EventStepModPredicate step = e.predicateByKind(EventStepModPredicate.class);
        if(step != null) {
            activeStepEventId = id;
            long threadId = step.threadId();
            switch(step.depth()) {
                case JdwpConsts.StepDepth.OVER:
                    NativeCode.Void("((JvmThread*)%s)->targetFramePtr = ((JvmThread*)%s)->framePtr", threadId, threadId);
                    break;
                    
                case JdwpConsts.StepDepth.INTO:
                    NativeCode.Void("((JvmThread*)%s)->targetFramePtr = ((JvmThread*)%s)->framePtr+1", threadId, threadId);
                    break;
                
                case JdwpConsts.StepDepth.OUT:
                    NativeCode.Void("((JvmThread*)%s)->targetFramePtr = ((JvmThread*)%s)->framePtr-1", threadId, threadId);
                    break;
                    
            }
            System.out.println("step: "+step.threadId()+" / "+step.size()+" / "+step.depth()+" / "+e.eventKind);
        }
    }
    
    //Called from thread
    public static void onHitBreakpoint(long methodId, int line, int requestId) {
        Thread thread = Thread.currentThread();
        ThreadStoppedEventData data = new ThreadStoppedEventData(
                requestId == -1 ? JdwpConsts.EventKind.SINGLE_STEP : JdwpConsts.EventKind.BREAKPOINT, 
                thread, 
                requestId == -1 ? activeStepEventId : requestId,
                methodId, 
                line);
        Debugger.sendEventData(data);
        System.out.println(Thread.currentThread().getName()+" paused on line "+line);
    }
    
    static void handleClassPrepare(Event e, int id) {
        Thread thread = getAllThreads()[0];
        VoidPtrPtr ptr = NativeCode.VoidPtrPtr("JVMCLASSPATH");
        int index = 0;
        Object value = ptr.get(index);
        while(value != null) {
            Class cls = (Class)value;
            Debugger.sendEventData(new ClassLoadedEventData(JdwpConsts.EventKind.CLASS_PREPARE, thread, id, cls));
            value = ptr.get(index++);
        }
        System.out.println("-- class prepare");
        if(e.predicates != null)
            for(EventPredicate p : e.predicates) System.out.println(p.modifierKind()+":"+p.getClass());
        
    }
}

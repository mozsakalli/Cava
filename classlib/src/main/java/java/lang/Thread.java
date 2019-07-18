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

package java.lang;

import cava.annotation.Include;
import cava.annotation.Keep;
import cava.c.VoidPtr;
import cava.platform.NativeCode;
import java.util.ArrayList;

@Keep
@Include("<pthread.h> <unistd.h>")
public class Thread implements java.lang.Runnable{

    private Runnable target;
    private boolean alive;
    private String name;
    private int priority = NORM_PRIORITY;
    private VoidPtr handle;

    public static final int MAX_PRIORITY=10;

    public static final int MIN_PRIORITY=1;

    public static final int NORM_PRIORITY=5;
    
    public final static ArrayList<Thread> THREADLIST;
    static {
        //add main thread
        THREADLIST = new ArrayList();
        THREADLIST.add(currentThread());
    }
    public Thread(){
        target = this;
    }

    public Thread(Runnable target){
         this.target = target;
    }

    public Thread(java.lang.Runnable target, java.lang.String name){
         this.target = target;
         this.name = name;
    }

    public Thread(java.lang.String name){
         this.name = name;
         target = this;
    }

    public long getId() {
        return NativeCode.Long("(jlong)%s", this);
    }
    
    public final static Thread currentThread() {
        return NativeCode.Thread("JvmCurrentThread()");
    }

    public final java.lang.String getName(){
        return name; 
    }

    public final StackTraceElement[] getStackTrace() {
        Throwable exception = (Throwable)NativeCode.Object("((JvmThread*)%s)->exception", this);
        if(exception == null) return new StackTraceElement[0];
        return exception.getStackTrace();
    }
    
    public final int getPriority(){
        return priority; 
    }

    public void interrupt(){
    }

    public final boolean isAlive(){
        return alive;
    }

    public final native void join() throws java.lang.InterruptedException;

    public void run(){
        if(target != null) target.run();
    }

    public final void setPriority(int newPriority){
        this.priority = newPriority;
    }
    
    public static void sleep(long millis) throws InterruptedException {
        NativeCode.Void("usleep(%s * 1000);", millis);
    }

    public void start() {
        NativeCode.Void("pthread_create(&%s, NULL, &mjava_lang_Thread_threadProc___Lcava_c_VoidPtr_, %s);", handle, this);
    }

    public java.lang.String toString(){
        return "Thread " + name; 
    }

    public static void yield(){
        try {
            sleep(1); 
        } catch(InterruptedException i) {}
    }

    private VoidPtr threadProc() {
        synchronized(THREADLIST) {
            THREADLIST.add(this);
        }
        NativeCode.Void("gcRegisterCurrentThread();");
        alive = true;
        try {
            run();
        } catch(Throwable error) {
            
        }
        alive = false;
        NativeCode.Void("gcUnregisterCurrentThread();");
        synchronized(THREADLIST) {
            THREADLIST.remove(this);
        }
        return null;
    }
}

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

import com.cava.debugger.handler.array.ArrayGetLengthHandler;
import com.cava.debugger.handler.array.ArrayGetValuesHandler;
import com.cava.debugger.handler.classobjectreference.ClassObjRefReflectedTypeHandler;
import com.cava.debugger.handler.classtype.ClassTypeSuperclassHandler;
import com.cava.debugger.handler.eventrequest.EventRequestClearHandler;
import com.cava.debugger.handler.eventrequest.EventRequestSetHandler;
import com.cava.debugger.handler.method.MethodLineTableHandler;
import com.cava.debugger.handler.method.MethodVariableTableHandler;
import com.cava.debugger.handler.method.MethodVariableTableWithGenericHandler;
import com.cava.debugger.handler.objectreference.ObjRefGetValuesHandler;
import com.cava.debugger.handler.objectreference.ObjRefInvokeMethodHandler;
import com.cava.debugger.handler.objectreference.ObjRefIsCollectedHandler;
import com.cava.debugger.handler.objectreference.ObjRefReferenceTypeHandler;
import com.cava.debugger.handler.referencetype.RefTypeClassLoaderHandler;
import com.cava.debugger.handler.referencetype.RefTypeClassObjectHandler;
import com.cava.debugger.handler.referencetype.RefTypeFieldsHandler;
import com.cava.debugger.handler.referencetype.RefTypeFieldsWithGenericHandler;
import com.cava.debugger.handler.referencetype.RefTypeGetValuesHandler;
import com.cava.debugger.handler.referencetype.RefTypeInterfacesHandler;
import com.cava.debugger.handler.referencetype.RefTypeMethodsHandler;
import com.cava.debugger.handler.referencetype.RefTypeMethodsWithGenericHandler;
import com.cava.debugger.handler.referencetype.RefTypeSignatureHandler;
import com.cava.debugger.handler.referencetype.RefTypeSignatureWithGenericHandler;
import com.cava.debugger.handler.referencetype.RefTypeSourceFileHandler;
import com.cava.debugger.handler.stackframe.StackFrameGetValuesHandler;
import com.cava.debugger.handler.string.StringGetValueHandler;
import com.cava.debugger.handler.thread.ThreadFrameCountHandler;
import com.cava.debugger.handler.thread.ThreadFramesHandler;
import com.cava.debugger.handler.thread.ThreadGetNameHandler;
import com.cava.debugger.handler.thread.ThreadResumeHandler;
import com.cava.debugger.handler.thread.ThreadStatusHandler;
import com.cava.debugger.handler.thread.ThreadSuspendCountHandler;
import com.cava.debugger.handler.thread.ThreadThreadGroupHandler;
import com.cava.debugger.handler.threadgroup.ThreadGroupNameHandler;
import com.cava.debugger.handler.vm.VmAllClassesHandler;
import com.cava.debugger.handler.vm.VmAllClassesWithGenericHandler;
import com.cava.debugger.handler.vm.VmAllThreadsHandler;
import com.cava.debugger.handler.vm.VmCapabilitiesHandler;
import com.cava.debugger.handler.vm.VmCapabilitiesNewHandler;
import com.cava.debugger.handler.vm.VmClassesBySignatureHandler;
import com.cava.debugger.handler.vm.VmCreateStringHandler;
import com.cava.debugger.handler.vm.VmDisposeHandler;
import com.cava.debugger.handler.vm.VmIdSizesHandler;
import com.cava.debugger.handler.vm.VmResumeHandler;
import com.cava.debugger.handler.vm.VmTopLevelThreadGroupsHandler;
import com.cava.debugger.handler.vm.VmVersionHandler;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class JdwpHandlers {
    
    public static JdwpHandler get(Packet packet) {
        return HANDLERS.get(packet.getKey());
    }
    
    private final static Map<Integer, JdwpHandler> HANDLERS = new HashMap();
    private final static void registerHandler(JdwpHandler handler) {
        int key = (handler.getCommandSet()<<8) + handler.getCommand();
        HANDLERS.put(key, handler);
    }
    static {
        //vm 0x1
        registerHandler(new VmVersionHandler());                //1
        registerHandler(new VmClassesBySignatureHandler());     //2
        registerHandler(new VmAllClassesHandler());             //3
        registerHandler(new VmAllThreadsHandler());             //4
        registerHandler(new VmTopLevelThreadGroupsHandler());   //5
        registerHandler(new VmDisposeHandler());                //6
        registerHandler(new VmIdSizesHandler());                //7
        registerHandler(new VmResumeHandler());                 //9
        registerHandler(new VmCreateStringHandler());           //11
        registerHandler(new VmCapabilitiesHandler());           //12
        registerHandler(new VmCapabilitiesNewHandler());        //17
        registerHandler(new VmAllClassesWithGenericHandler());  //20
        
        //reftype 0x2
        registerHandler(new RefTypeSignatureHandler());         //1
        registerHandler(new RefTypeClassLoaderHandler());       //2
        registerHandler(new RefTypeFieldsHandler());            //4
        registerHandler(new RefTypeMethodsHandler());           //5
        registerHandler(new RefTypeGetValuesHandler());         //6
        registerHandler(new RefTypeSourceFileHandler());        //7
        registerHandler(new RefTypeInterfacesHandler());        //10
        registerHandler(new RefTypeClassObjectHandler());       //11
        registerHandler(new RefTypeSignatureWithGenericHandler());//13
        registerHandler(new RefTypeFieldsWithGenericHandler()); //14
        registerHandler(new RefTypeMethodsWithGenericHandler());//15
        
        //classtype
        registerHandler(new ClassTypeSuperclassHandler());      //1
        
        // method 0x6
        registerHandler(new MethodLineTableHandler());          //1
        registerHandler(new MethodVariableTableHandler());      //2
        registerHandler(new MethodVariableTableWithGenericHandler());      //5
        
        //objref 0x9
        registerHandler(new ObjRefReferenceTypeHandler());      //1
        registerHandler(new ObjRefGetValuesHandler());          //2
        registerHandler(new ObjRefInvokeMethodHandler());       //6
        registerHandler(new ObjRefIsCollectedHandler());        //9
        //string 0xa
        registerHandler(new StringGetValueHandler());           //1
        
        //thread 0xb
        registerHandler(new ThreadGetNameHandler());            //1
        registerHandler(new ThreadResumeHandler());             //3
        registerHandler(new ThreadStatusHandler());             //4
        registerHandler(new ThreadThreadGroupHandler());        //5
        registerHandler(new ThreadFramesHandler());             //6
        registerHandler(new ThreadFrameCountHandler());         //7
        registerHandler(new ThreadSuspendCountHandler());       //12

        //threafgroup 0xc
        registerHandler(new ThreadGroupNameHandler());          //1
        
        //array 0xd
        registerHandler(new ArrayGetLengthHandler());           //1
        registerHandler(new ArrayGetValuesHandler());           //2
        
        //eventrequest 0xf
        registerHandler(new EventRequestSetHandler());          //1
        registerHandler(new EventRequestClearHandler());        //2
        
        
        //stackframe 0x10
        registerHandler(new StackFrameGetValuesHandler());      //1
        
        //classobjectreference
        registerHandler(new ClassObjRefReflectedTypeHandler());
    }
    
}

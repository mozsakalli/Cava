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

package debugger;

import debugger.handler.array.ArrayGetLengthHandler;
import debugger.handler.array.ArrayGetValuesHandler;
import debugger.handler.classobjectreference.ClassObjRefReflectedTypeHandler;
import debugger.handler.classtype.ClassTypeSuperclassHandler;
import debugger.handler.eventrequest.EventRequestClearHandler;
import debugger.handler.eventrequest.EventRequestSetHandler;
import debugger.handler.method.MethodLineTableHandler;
import debugger.handler.method.MethodVariableTableHandler;
import debugger.handler.method.MethodVariableTableWithGenericHandler;
import debugger.handler.objectreference.ObjRefGetValuesHandler;
import debugger.handler.objectreference.ObjRefInvokeMethodHandler;
import debugger.handler.objectreference.ObjRefIsCollectedHandler;
import debugger.handler.objectreference.ObjRefReferenceTypeHandler;
import debugger.handler.referencetype.RefTypeClassLoaderHandler;
import debugger.handler.referencetype.RefTypeClassObjectHandler;
import debugger.handler.referencetype.RefTypeFieldsHandler;
import debugger.handler.referencetype.RefTypeFieldsWithGenericHandler;
import debugger.handler.referencetype.RefTypeGetValuesHandler;
import debugger.handler.referencetype.RefTypeInterfacesHandler;
import debugger.handler.referencetype.RefTypeMethodsHandler;
import debugger.handler.referencetype.RefTypeMethodsWithGenericHandler;
import debugger.handler.referencetype.RefTypeSignatureHandler;
import debugger.handler.referencetype.RefTypeSignatureWithGenericHandler;
import debugger.handler.referencetype.RefTypeSourceFileHandler;
import debugger.handler.stackframe.StackFrameGetValuesHandler;
import debugger.handler.string.StringGetValueHandler;
import debugger.handler.thread.ThreadFrameCountHandler;
import debugger.handler.thread.ThreadFramesHandler;
import debugger.handler.thread.ThreadGetNameHandler;
import debugger.handler.thread.ThreadResumeHandler;
import debugger.handler.thread.ThreadStatusHandler;
import debugger.handler.thread.ThreadSuspendCountHandler;
import debugger.handler.thread.ThreadThreadGroupHandler;
import debugger.handler.threadgroup.ThreadGroupNameHandler;
import debugger.handler.vm.VmAllClassesHandler;
import debugger.handler.vm.VmAllClassesWithGenericHandler;
import debugger.handler.vm.VmAllThreadsHandler;
import debugger.handler.vm.VmCapabilitiesHandler;
import debugger.handler.vm.VmCapabilitiesNewHandler;
import debugger.handler.vm.VmClassesBySignatureHandler;
import debugger.handler.vm.VmCreateStringHandler;
import debugger.handler.vm.VmDisposeHandler;
import debugger.handler.vm.VmIdSizesHandler;
import debugger.handler.vm.VmResumeHandler;
import debugger.handler.vm.VmTopLevelThreadGroupsHandler;
import debugger.handler.vm.VmVersionHandler;
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
        System.out.println("handler-registered: "+handler.getCommandSet()+"/"+handler.getCommand());
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

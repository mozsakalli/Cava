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
import debugger.OutBuffer;
import debugger.Packet;

/**
 *
 * @author mustafa
 */
public class VmCapabilitiesNewHandler extends VmHandler {

    @Override
    public int handle(Packet packet, OutBuffer out) {
        //canWatchFieldModification: Can the VM watch field modification, and therefore can it send the Modification
        // Watchpoint Event?
        out.writeBoolean(false);

        //canWatchFieldAccess: Can the VM watch field access, and therefore can it send the Access Watchpoint Event?
        out.writeBoolean(false);

        //canGetBytecodes: Can the VM get the bytecodes of a given method?
        out.writeBoolean(false);

        //canGetSyntheticAttribute: Can the VM determine whether a field or method is synthetic? (that is, can the
        // VM determine if the method or the field was invented by the compiler?)
        out.writeBoolean(false);

        //canGetOwnedMonitorInfo: Can the VM get the owned monitors infornation for a thread?
        out.writeBoolean(false);

        //canGetCurrentContendedMonitor: Can the VM get the current contended monitor of a thread?
        out.writeBoolean(false);

        //canGetMonitorInfo: Can the VM get the monitor information for a given object?
        out.writeBoolean(false);

        //canRedefineClasses: Can the VM redefine classes?
        out.writeBoolean(false);

        //canAddMethod: Can the VM add methods when redefining classes?
        out.writeBoolean(false);

        //canUnrestrictedlyRedefineClasses: Can the VM redefine classesin arbitrary ways?
        out.writeBoolean(false);

        //canPopFrames: Can the VM pop stack frames?
        out.writeBoolean(false);

        //canUseInstanceFilters: Can the VM filter events by specific object?
        out.writeBoolean(true);

        //canGetSourceDebugExtension: Can the VM get the source debug extension?
        out.writeBoolean(false);

        //canRequestVMDeathEvent: Can the VM request VM death events?
        out.writeBoolean(false);

        //canSetDefaultStratum: Can the VM set a default stratum?
        out.writeBoolean(false);

        //reserved16: Reserved for future capability
        out.writeBoolean(false);

        //reserved17: Reserved for future capability
        out.writeBoolean(false);

        //reserved18: Reserved for future capability
        out.writeBoolean(false);

        //reserved19: Reserved for future capability
        out.writeBoolean(false);

        //reserved20: Reserved for future capability
        out.writeBoolean(false);

        //reserved21: Reserved for future capability
        out.writeBoolean(false);

        //reserved22: Reserved for future capability
        out.writeBoolean(false);

        //reserved23: Reserved for future capability
        out.writeBoolean(false);

        //reserved24: Reserved for future capability
        out.writeBoolean(false);

        //reserved25: Reserved for future capability
        out.writeBoolean(false);

        //reserved26: Reserved for future capability
        out.writeBoolean(false);

        //reserved27: Reserved for future capability
        out.writeBoolean(false);

        //reserved28: Reserved for future capability
        out.writeBoolean(false);

        //reserved29: Reserved for future capability
        out.writeBoolean(false);

        //reserved30: Reserved for future capability
        out.writeBoolean(false);

        //reserved31: Reserved for future capability
        out.writeBoolean(false);

        //reserved32: Reserved for future capability
        out.writeBoolean(false);

        return JdwpConsts.Error.NONE;
    }

    @Override
    public int getCommand() {
        return 17;
    }

}

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

/**
 *
 * @author mustafa
 */
public class Packet {
    
    public byte[] buffer;
    public int ptr;
    
    public int payload;
    public int id;
    public int flags;
    public int commandSet;
    public int command;
    
    public void start(byte[] bytes, int ptr) {
        this.buffer = bytes;
        this.ptr = ptr;
        payload = readInt();
        id = readInt();
        flags = readByte();
        commandSet = readByte();
        command = readByte();
    }
    
    final int readN(int len) {
        int result = 0;
        for(int i=0; i<len; i++)
            result = (result << 8) + (buffer[ptr++]&0xff);
        return result;
    }
    
    final public int readByte() {
        return buffer[ptr++]&0xff;
    }
    
    final public int readShort() {
        return readN(2);
    }
    
    final public int readInt() {
        return readN(4);
    }
    
    public long readLong() {
        int h = readInt();
        int l = readInt();
        return (((long) h) << 32L) | ((long) l) & 0xffffffffL;        
    }
    
    final public String readString() {
        int len = readInt();
        String result = new String(buffer, ptr, len);
        ptr += len;
        return result;
    }
    
    public int getKey() {
        return (commandSet << 8) + command;
    }
    
    @Override
    public String toString() {
        return "packet: payload="+payload+" id="+Integer.toHexString(id)+" set="+commandSet+" cmd="+command+" flags="+Integer.toHexString(flags);
    }
    
    
}

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

/**
 *
 * @author mustafa
 */
public class OutBuffer {
    
    byte[] buffer = new byte[11];
    int ptr;
    
    private static int eventRequestSerial = 0x10000000;
    
    public void reset() {
        ptr = 11;
    }
    
    void ensure(int required) {
        if(buffer == null || ptr+required > buffer.length) {
            byte[] tmp = new byte[buffer != null ? Math.max(buffer.length*2, ptr+required) : required*2];
            for(int i=0; i<ptr; i++) tmp[i] = buffer[i];
            buffer = tmp;
        }
    }
    
    public void complete(int id, int errorCode) {
        setInt(0, ptr);
        setInt(4, id);
        buffer[8] = (byte)0x80;
        buffer[9] = (byte)((errorCode>>8)&0xff);
        buffer[10] = (byte)(errorCode&0xff);
    }
    
    public void completeEvent() {
        setInt(0, ptr);
        setInt(4, eventRequestSerial++);
        buffer[8] = 0;
        buffer[9] = 64;
        buffer[10] = 100;
    }
    
    public byte[] getBuffer() {
        return buffer;
    }
    
    public int getSize() {
        return ptr;
    }
    
    
    public void setInt(int pos, int v) {
        buffer[pos++] = (byte)((v>>24)&0xff);
        buffer[pos++] = (byte)((v>>16)&0xff);
        buffer[pos++] = (byte)((v>>8)&0xff);
        buffer[pos] = (byte)((v>>0)&0xff);
    }
    
    public void writeLong(long v) {
        ensure(8);
        buffer[ptr++] = (byte)((v>>56)&0xff);
        buffer[ptr++] = (byte)((v>>48)&0xff);
        buffer[ptr++] = (byte)((v>>40)&0xff);
        buffer[ptr++] = (byte)((v>>32)&0xff);
        buffer[ptr++] = (byte)((v>>24)&0xff);
        buffer[ptr++] = (byte)((v>>16)&0xff);
        buffer[ptr++] = (byte)((v>>8)&0xff);
        buffer[ptr++] = (byte)((v>>0)&0xff);
    }
    
    public void writeInt(int v) {
        ensure(4);
        buffer[ptr++] = (byte)((v>>24)&0xff);
        buffer[ptr++] = (byte)((v>>16)&0xff);
        buffer[ptr++] = (byte)((v>>8)&0xff);
        buffer[ptr++] = (byte)((v>>0)&0xff);
    }
    
    public void writeShort(int v) {
        ensure(2);
        buffer[ptr++] = (byte)((v>>8)&0xff);
        buffer[ptr++] = (byte)((v>>0)&0xff);
    }

    public void writeByte(int v) {
        ensure(1);
        buffer[ptr++] = (byte)(v&0xff);
    }
    
    public void writeFloat(float v) {
        writeInt(Float.floatToRawIntBits(v));
    }
    public void writeDouble(double v) {
        writeLong(Double.doubleToRawLongBits(v));
    }
    public void writeBoolean(boolean v) {
        writeByte(v ? 1 : 0);
    }
    
    public void writeString(String str) {
        byte[] buffer = str.getBytes();
        int len = buffer.length;
        ensure(len + 4);
        writeInt(len);
        for(int i=0; i<len; i++) this.buffer[ptr++] = buffer[i];
    }
    
    //for handshake
    public void setBytes(byte[] bytes, int offset, int length) {
        ensure(length);
        for(int i=0; i<length; i++) {
            buffer[i] = bytes[offset+i];
        }
        ptr = length;
    }
    
    public int ptr() { return ptr; }
}

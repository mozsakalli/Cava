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

package java.net;

import cava.annotation.Include;
import cava.c.CharPtr;
import cava.platform.NativeCode;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 *
 * @author mustafa
 */
@Include("<sys/socket.h> <netinet/in.h> <arpa/inet.h> <unistd.h> <netdb.h>")
public class Socket implements Closeable {
    
    int fd;
    boolean isConnected;
    SocketOutputStream output;
    SocketInputStream input;
    
    public Socket() {}
    public Socket(String host, int port) throws IOException {
        connect(host, port);
    }
    
    protected Socket(int fd) {
        this.fd = fd;
    }
    
    public void connect(String host, int port) throws IOException {
        if(isConnected) return;
        NativeCode.Void("struct hostent *host");
        CharPtr ascii = CharPtr.allocAsciiZ(host);
        if(NativeCode.Bool("(host = gethostbyname(%s)) != jnull", ascii)) {
            fd = NativeCode.Int("socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)");
            NativeCode.Void("struct sockaddr_in sock_addr");
            NativeCode.Void("memset((char *) &sock_addr, 0, sizeof(sock_addr))");
            NativeCode.Void("sock_addr.sin_family = AF_INET");
            NativeCode.Void("sock_addr.sin_port = htons(%s)", port);
            NativeCode.Void("sock_addr.sin_addr = *((struct in_addr *) host->h_addr_list[0])");
            NativeCode.Void("memset(&(sock_addr.sin_zero), 0, sizeof((sock_addr.sin_zero)))");
            
            if(!NativeCode.Bool("connect(%s, (struct sockaddr *) &sock_addr, sizeof(sock_addr)) != -1", fd))
                throw new SocketTimeoutException();
            isConnected = true;
        } else throw new SocketException("Unknown host: "+host);
    }
    
    public OutputStream getOutputStream() {
        if(output == null) output = new SocketOutputStream();
        return output;
    }
    
    public InputStream getInputStream() {
        if(input == null) input = new SocketInputStream();
        return input;
    }
    
    @Override
    public void close() throws IOException {
        NativeCode.Void("close(%s)", fd);
        fd = 0;
        input = null;
        output = null;
    }
    
    class SocketOutputStream extends OutputStream {

        @Override
        public void write(int b) throws IOException {
            int written = NativeCode.Int("write(%s,&%s,1)", fd,b);
            if(written < 0) throw new IOException("Write error");
        }

        @Override
        public void write(byte[] b, int off, int len) throws IOException {
            if(off < 0 || off >= b.length || off+len < 0 || off+len > b.length) throw new ArrayIndexOutOfBoundsException();
            CharPtr ptr = CharPtr.from(b).add(off);
            while(len > 0) {
                int written = NativeCode.Int("write(%s,%s,%s)", fd,ptr,len);
                if(written <= 0) throw new IOException("Write error");
                len -= written;
                ptr = ptr.add(written);
            }    
        }
        
    }
    
    class SocketInputStream extends InputStream {

        @Override
        public int read() throws IOException {
            byte buffer = 0;
            int readed = NativeCode.Int("read(%s,&%s,1);", fd,buffer);
            if(readed <= 0) throw new IOException("Read error");
            return buffer;
        }

        @Override
        public int read(byte[] b, int off, int len) throws IOException {
            if(len <= 0) return 0;
            if(off < 0 || off >= b.length || off+len < 0 || off+len > b.length) throw new ArrayIndexOutOfBoundsException();
            CharPtr ptr = CharPtr.from(b).add(off);
            int readed = NativeCode.Int("read(%s,%s,%s)", fd, ptr, len);
            if(readed <= 0) throw new IOException("Read error");
            return readed;
        }
        
        
    }
}

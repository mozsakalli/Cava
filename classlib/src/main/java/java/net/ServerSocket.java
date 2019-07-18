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
import cava.platform.NativeCode;
import java.io.Closeable;
import java.io.IOException;

/**
 *
 * @author mustafa
 */
@Include("<sys/socket.h> <netinet/in.h> <arpa/inet.h>")
public class ServerSocket implements Closeable {
    
    int fd;
    
    public ServerSocket(int port) throws IOException {
        NativeCode.Void("struct sockaddr_in serv_addr;");
        fd = NativeCode.Int("socket(AF_INET, SOCK_STREAM, 0)");
        NativeCode.Void("setsockopt(%s, SOL_SOCKET, SO_REUSEADDR, &(int){ 1 }, sizeof(int))", fd);
	NativeCode.Void("memset(&serv_addr, '0', sizeof(serv_addr));");
	NativeCode.Void("serv_addr.sin_family = AF_INET;");
	NativeCode.Void("serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);");
	NativeCode.Void("serv_addr.sin_port = htons(%s);", port);

	boolean fail = NativeCode.Bool("bind(%s, (struct sockaddr*)&serv_addr, sizeof(serv_addr)) < 0;", fd);
        if(fail) throw new IOException("Can't bind on port "+port);
	NativeCode.Void("listen(%s, 10) < 0;", fd);
    }
    
    @Override
    public void close() throws IOException {
        NativeCode.Void("close(%s)", fd);
        fd = 0;
    }
    
    public Socket accept() throws IOException {
        NativeCode.Void("struct sockaddr_in cli_addr;");
        NativeCode.Void("int clilen;");
        int clientFd = NativeCode.Int("accept(%s, (struct sockaddr *)&cli_addr, &clilen);", fd);
        if(clientFd < 0) throw new IOException("Accept failure");
        return new Socket(clientFd);
    }
    
}

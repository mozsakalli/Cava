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

package cava.sample;

import java.io.InputStream;
import java.net.Socket;


/**
 *
 * @author mustafa
 */
public class Test {
    
    public static void main(String...args) throws Exception {
        Socket s = new Socket("192.168.0.118",10000);
        InputStream in = s.getInputStream();
        for(int i=0; i<14; i++) System.out.println(in.read());
    }
}

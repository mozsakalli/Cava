
import com.cava.compiler.CompilerContext;
import com.cava.compiler.model.Clazz;
import java.io.File;

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

/**
 *
 * @author mustafa
 */
public class Main {
    
    static int v1(int t) {
        return t/2 < 50 ? t*2 : t/100;
    }
    
    static int v2(int t, int t2) {
        return t*t2;
    }
    public static int test() {
        int[] vals = new int[]{0,1,2,3};
        int result = 0;
        byte b = 10;
        for(int i=0; i<100; i++) {
            int mul = i < 50 ? 2 : (i%10==2 ? 9 : 4);
            //mul *= mul % 10 == 0 ? v1(mul) : v2(mul,i);
            try {
            result += i * mul + vals[i%4];
            b = (byte)(result%10);
            } catch(Throwable e){
                b += 5;
            } finally {
                result -= 10;
            }
            result += b;
        }
        return result;
    }
    
    public static void main(String...args) {
        
        CompilerContext.classPath = new File[]{
            new File("/Users/mustafa/Work/CAVA/classlib/target/classes"),
            new File("/Users/mustafa/Work/CAVA/rd/target/classes"),
        };
        
        Clazz cls = CompilerContext.resolve("Main");
    }
    
}

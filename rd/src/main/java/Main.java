
import com.cava.compiler.Builder;
import com.cava.compiler.BuilderOptions;
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
    
    public static int test() {
        int result = 0;
        for(int i=0; i<100; i++) {
            int mul = i < 50 ? 2 : 4;
            result += i * mul;
        }
        return result;
    }
    
    public static void main(String...args) {
        
        BuilderOptions opt = new BuilderOptions();
        opt.classPath(new File[]{
            new File("/Users/mustafa/Work/CAVA/rd/target/classes"),
        });
        
        Builder builder = new Builder(opt);
        Clazz cls = builder.resolve("Main");
    }
    
}

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
public class Test {
    
    public static void main() {
        int ret = 0;
        try {
            int sum = 0;
            for(int i=0; i<10; i++) {
                sum += i;
            }
        }catch(NullPointerException e){
            ret = 1;
        }catch(ArrayIndexOutOfBoundsException e) {
            ret = 2;
        }
    }
}

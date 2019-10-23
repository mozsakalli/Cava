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

    static int constant(int v) { return 10000; }

    public static void main() {
        short[] array = new short[]{1,2,3};
        Object[] oarray = new Object[]{"Deneme",12};
        double[] da = new double[]{1,2,3};
        float[] fa = new float[]{1,23};
        byte[] ba = new byte[]{1,2};
        //int sum = 0;
        byte sumb = 0;
        for(int i=0; i<20; i++) {
            try {
                //sum += i;
                sumb += (byte) i + (byte) constant(i) + (byte) array[i];
                switch (i) {
                    case 0:
                        sumb -= 100;
                        break;
                    case 10:
                        sumb += 100;
                        da[0]++;
                    default:
                        da[0]--;
                }
                if(sumb % 10 == 0) return;
            }
            catch (NullPointerException e2) {
                sumb += 10;
                //System.out.println("e2");
            }
            catch(Exception e1) {
                sumb += 10;
                //System.out.println("e1");
            }
            finally {
                sumb -= 10;
            }
            array[i+1] = sumb;
        }
    }
}

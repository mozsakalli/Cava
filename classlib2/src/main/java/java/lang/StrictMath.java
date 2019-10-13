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

package java.lang;

/**
 *
 * @author mustafa
 */
public class StrictMath {
    
    /**
     * The double value that is closer than any other to e, the base of the natural logarithms.
     * Since: CLDC 1.1 See Also:Constant Field Values
     */
    public static final double E=2.718281828459045d;

    /**
     * The double value that is closer than any other to
     * , the ratio of the circumference of a circle to its diameter.
     * Since: CLDC 1.1 See Also:Constant Field Values
     */
    public static final double PI=3.141592653589793d;

    public static double abs(double a) {
        return a<0 ? -a : a;
    }

    public static float abs(float a) {
        return a<0 ? -a : a;
    }

    public static int abs(int a) {
        return a<0 ? -a : a;
    }

    public static long abs(long a) {
        return a<0 ? -a : a;
    }


    public static native double ceil(double a);

    public static native double floor(double a);

    public static double max(double a, double b) {
        return a>b ? a : b;
    }

    public static float max(float a, float b) {
        return a>b ? a : b;
    }

    public static int max(int a, int b) {
        return a>b ? a : b;
    }

    public static long max(long a, long b) {
        return a>b ? a : b;
    }

    public static double min(double a, double b) {
        return a>b ? b : a;
    }

    public static float min(float a, float b) {
        return a>b ? b : a;
    }

    public static int min(int a, int b) {
        return a>b ? b : a;
    }

    public static long min(long a, long b) {
        return a>b ? b : a;
    }

    public native static double cos(double a);

    public native static double sin(double a);

    public native static double sqrt(double a);

    public native static double tan(double a);

    public native static double random();
    
    public native static double log(double v);
    
    public static double toDegrees(double angrad){
        return angrad * 57.2957795;
    }

    public static double toRadians(double angdeg){
        return angdeg / 57.2957795;
    }

    public static long round(double d) {
        // check for NaN
        if (d != d) {
            return 0L;
        }
        return (long) floor(d + 0.5d);
    }

    public static int round(float f) {
        // check for NaN
        if (f != f) {
            return 0;
        }
        return (int) floor(f + 0.5f);
    }

    public native static double atan2(double y, double x);
    
    public native static double pow(double x, double y);
    
    public native static double asin(double v);

    public native static double acos(double v);
    
}

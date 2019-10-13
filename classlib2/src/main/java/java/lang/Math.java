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

import java.util.Random;
import cava.VM;

/**
 * Class Math provides basic math constants and operations such as trigonometric
 * functions, hyperbolic functions, exponential, logarithms, etc.
 */
public final class Math {

    /**
     * The double value closest to e, the base of the natural logarithm.
     */
    public static final double E = 2.718281828459045;

    /**
     * The double value closest to pi, the ratio of a circle's circumference to
     * its diameter.
     */
    public static final double PI = 3.141592653589793;

    private static Random random;

    /**
     * Prevents this class from being instantiated.
     */
    private Math() {
    }

    /**
     * Returns the absolute value of the argument.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code abs(-0.0) = +0.0}</li>
     * <li>{@code abs(+infinity) = +infinity}</li>
     * <li>{@code abs(-infinity) = +infinity}</li>
     * <li>{@code abs(NaN) = NaN}</li>
     * </ul>
     */
    public static double abs(double d) {
        return Double.longBitsToDouble(Double.doubleToRawLongBits(d) & 0x7fffffffffffffffL);
    }

    /**
     * Returns the absolute value of the argument.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code abs(-0.0) = +0.0}</li>
     * <li>{@code abs(+infinity) = +infinity}</li>
     * <li>{@code abs(-infinity) = +infinity}</li>
     * <li>{@code abs(NaN) = NaN}</li>
     * </ul>
     */
    public static float abs(float f) {
        return Float.intBitsToFloat(Float.floatToRawIntBits(f) & 0x7fffffff);
    }

    /**
     * Returns the absolute value of the argument.
     * <p>
     * If the argument is {@code Integer.MIN_VALUE}, {@code Integer.MIN_VALUE}
     * is returned.
     */
    public static int abs(int i) {
        return (i >= 0) ? i : -i;
    }

    /**
     * Returns the absolute value of the argument. If the argument is {@code
     * Long.MIN_VALUE}, {@code Long.MIN_VALUE} is returned.
     */
    public static long abs(long l) {
        return (l >= 0) ? l : -l;
    }

    /**
     * Returns the closest double approximation of the arc cosine of the
     * argument within the range {@code [0..pi]}. The returned result is within
     * 1 ulp (unit in the last place) of the real result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code acos((anything > 1) = NaN}</li>
     * <li>{@code acos((anything < -1) = NaN}</li>
     * <li>{@code acos(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the value to compute arc cosine of.
     * @return the arc cosine of the argument.
     */
    public static double acos(double d) {
        return VM.acos(d);
    }

    /**
     * Returns the closest double approximation of the arc sine of the argument
     * within the range {@code [-pi/2..pi/2]}. The returned result is within 1
     * ulp (unit in the last place) of the real result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code asin((anything > 1)) = NaN}</li>
     * <li>{@code asin((anything < -1)) = NaN}</li>
     * <li>{@code asin(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the value whose arc sine has to be computed.
     * @return the arc sine of the argument.
     */
    public static double asin(double d) {
        return VM.asin(d);
    }

    /**
     * Returns the closest double approximation of the arc tangent of the
     * argument within the range {@code [-pi/2..pi/2]}. The returned result is
     * within 1 ulp (unit in the last place) of the real result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code atan(+0.0) = +0.0}</li>
     * <li>{@code atan(-0.0) = -0.0}</li>
     * <li>{@code atan(+infinity) = +pi/2}</li>
     * <li>{@code atan(-infinity) = -pi/2}</li>
     * <li>{@code atan(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the value whose arc tangent has to be computed.
     * @return the arc tangent of the argument.
     */
    public static double atan(double d) {
        return VM.atan(d);
    }

    /**
     * Returns the closest double approximation of the arc tangent of {@code
     * y/x} within the range {@code [-pi..pi]}. This is the angle of the polar
     * representation of the rectangular coordinates (x,y). The returned result
     * is within 2 ulps (units in the last place) of the real result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code atan2((anything), NaN ) = NaN;}</li>
     * <li>{@code atan2(NaN , (anything) ) = NaN;}</li>
     * <li>{@code atan2(+0.0, +(anything but NaN)) = +0.0}</li>
     * <li>{@code atan2(-0.0, +(anything but NaN)) = -0.0}</li>
     * <li>{@code atan2(+0.0, -(anything but NaN)) = +pi}</li>
     * <li>{@code atan2(-0.0, -(anything but NaN)) = -pi}</li>
     * <li>{@code atan2(+(anything but 0 and NaN), 0) = +pi/2}</li>
     * <li>{@code atan2(-(anything but 0 and NaN), 0) = -pi/2}</li>
     * <li>{@code atan2(+(anything but infinity and NaN), +infinity)} {@code =}
     * {@code +0.0}</li>
     * <li>{@code atan2(-(anything but infinity and NaN), +infinity)} {@code =}
     * {@code -0.0}</li>
     * <li>{@code atan2(+(anything but infinity and NaN), -infinity) = +pi}</li>
     * <li>{@code atan2(-(anything but infinity and NaN), -infinity) = -pi}</li>
     * <li>{@code atan2(+infinity, +infinity ) = +pi/4}</li>
     * <li>{@code atan2(-infinity, +infinity ) = -pi/4}</li>
     * <li>{@code atan2(+infinity, -infinity ) = +3pi/4}</li>
     * <li>{@code atan2(-infinity, -infinity ) = -3pi/4}</li>
     * <li>{@code atan2(+infinity, (anything but,0, NaN, and infinity))} {@code
     * =} {@code +pi/2}</li>
     * <li>{@code atan2(-infinity, (anything but,0, NaN, and infinity))} {@code
     * =} {@code -pi/2}</li>
     * </ul>
     *
     * @param y the numerator of the value whose atan has to be computed.
     * @param x the denominator of the value whose atan has to be computed.
     * @return the arc tangent of {@code y/x}.
     */
    public static double atan2(double y, double x) {
        return VM.atan2(y,x);
    }

    /**
     * Returns the double conversion of the most negative (closest to negative
     * infinity) integer value greater than or equal to the argument.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code ceil(+0.0) = +0.0}</li>
     * <li>{@code ceil(-0.0) = -0.0}</li>
     * <li>{@code ceil((anything in range (-1,0)) = -0.0}</li>
     * <li>{@code ceil(+infinity) = +infinity}</li>
     * <li>{@code ceil(-infinity) = -infinity}</li>
     * <li>{@code ceil(NaN) = NaN}</li>
     * </ul>
     */
    public static  double ceil(double d) {
        return VM.ceil(d);
    }

    /**
     * Returns the closest double approximation of the cosine of the argument.
     * The returned result is within 1 ulp (unit in the last place) of the real
     * result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code cos(+infinity) = NaN}</li>
     * <li>{@code cos(-infinity) = NaN}</li>
     * <li>{@code cos(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the angle whose cosine has to be computed, in radians.
     * @return the cosine of the argument.
     */
    public static double cos(double d) {
        return VM.cos(d);
    }

    /**
     * Returns the closest double approximation of the raising "e" to the power
     * of the argument. The returned result is within 1 ulp (unit in the last
     * place) of the real result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code exp(+infinity) = +infinity}</li>
     * <li>{@code exp(-infinity) = +0.0}</li>
     * <li>{@code exp(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the value whose exponential has to be computed.
     * @return the exponential of the argument.
     */
    public static double exp(double d) {
        return VM.exp(d);
    }


    /**
     * Returns the double conversion of the most positive (closest to positive
     * infinity) integer value less than or equal to the argument.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code floor(+0.0) = +0.0}</li>
     * <li>{@code floor(-0.0) = -0.0}</li>
     * <li>{@code floor(+infinity) = +infinity}</li>
     * <li>{@code floor(-infinity) = -infinity}</li>
     * <li>{@code floor(NaN) = NaN}</li>
     * </ul>
     */
    public static double floor(double d) {
        return VM.floor(d);
    }



    /**
     * Returns the closest double approximation of the natural logarithm of the
     * argument. The returned result is within 1 ulp (unit in the last place) of
     * the real result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code log(+0.0) = -infinity}</li>
     * <li>{@code log(-0.0) = -infinity}</li>
     * <li>{@code log((anything < 0) = NaN}</li>
     * <li>{@code log(+infinity) = +infinity}</li>
     * <li>{@code log(-infinity) = NaN}</li>
     * <li>{@code log(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the value whose log has to be computed.
     * @return the natural logarithm of the argument.
     */
    public static double log(double d) {
        return VM.log(d);
    }

    /**
     * Returns the closest double approximation of the base 10 logarithm of the
     * argument. The returned result is within 1 ulp (unit in the last place) of
     * the real result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code log10(+0.0) = -infinity}</li>
     * <li>{@code log10(-0.0) = -infinity}</li>
     * <li>{@code log10((anything < 0) = NaN}</li>
     * <li>{@code log10(+infinity) = +infinity}</li>
     * <li>{@code log10(-infinity) = NaN}</li>
     * <li>{@code log10(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the value whose base 10 log has to be computed.
     * @return the natural logarithm of the argument.
     */
    public static double log10(double d) {
        return VM.log10(d);
    }



    /**
     * Returns the most positive (closest to positive infinity) of the two
     * arguments.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code max(NaN, (anything)) = NaN}</li>
     * <li>{@code max((anything), NaN) = NaN}</li>
     * <li>{@code max(+0.0, -0.0) = +0.0}</li>
     * <li>{@code max(-0.0, +0.0) = +0.0}</li>
     * </ul>
     */
    public static double max(double d1, double d2) {
        if (d1 > d2) {
            return d1;
        }
        if (d1 < d2) {
            return d2;
        }
        /* if either arg is NaN, return NaN */
        if (d1 != d2) {
            return Double.NaN;
        }
        /* max(+0.0,-0.0) == +0.0 */
 /* Double.doubleToRawLongBits(0.0d) == 0 */
        if (Double.doubleToRawLongBits(d1) != 0) {
            return d2;
        }
        return 0.0d;
    }

    /**
     * Returns the most positive (closest to positive infinity) of the two
     * arguments.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code max(NaN, (anything)) = NaN}</li>
     * <li>{@code max((anything), NaN) = NaN}</li>
     * <li>{@code max(+0.0, -0.0) = +0.0}</li>
     * <li>{@code max(-0.0, +0.0) = +0.0}</li>
     * </ul>
     */
    public static float max(float f1, float f2) {
        if (f1 > f2) {
            return f1;
        }
        if (f1 < f2) {
            return f2;
        }
        /* if either arg is NaN, return NaN */
        if (f1 != f2) {
            return Float.NaN;
        }
        /* max(+0.0,-0.0) == +0.0 */
 /* Float.floatToRawIntBits(0.0f) == 0*/
        if (Float.floatToRawIntBits(f1) != 0) {
            return f2;
        }
        return 0.0f;
    }

    /**
     * Returns the most positive (closest to positive infinity) of the two
     * arguments.
     */
    public static int max(int i1, int i2) {
        return i1 > i2 ? i1 : i2;
    }

    /**
     * Returns the most positive (closest to positive infinity) of the two
     * arguments.
     */
    public static long max(long l1, long l2) {
        return l1 > l2 ? l1 : l2;
    }

    /**
     * Returns the most negative (closest to negative infinity) of the two
     * arguments.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code min(NaN, (anything)) = NaN}</li>
     * <li>{@code min((anything), NaN) = NaN}</li>
     * <li>{@code min(+0.0, -0.0) = -0.0}</li>
     * <li>{@code min(-0.0, +0.0) = -0.0}</li>
     * </ul>
     */
    public static double min(double d1, double d2) {
        if (d1 > d2) {
            return d2;
        }
        if (d1 < d2) {
            return d1;
        }
        /* if either arg is NaN, return NaN */
        if (d1 != d2) {
            return Double.NaN;
        }
        /* min(+0.0,-0.0) == -0.0 */
 /* 0x8000000000000000L == Double.doubleToRawLongBits(-0.0d) */
        if (Double.doubleToRawLongBits(d1) == 0x8000000000000000L) {
            return -0.0d;
        }
        return d2;
    }

    /**
     * Returns the most negative (closest to negative infinity) of the two
     * arguments.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code min(NaN, (anything)) = NaN}</li>
     * <li>{@code min((anything), NaN) = NaN}</li>
     * <li>{@code min(+0.0, -0.0) = -0.0}</li>
     * <li>{@code min(-0.0, +0.0) = -0.0}</li>
     * </ul>
     */
    public static float min(float f1, float f2) {
        if (f1 > f2) {
            return f2;
        }
        if (f1 < f2) {
            return f1;
        }
        /* if either arg is NaN, return NaN */
        if (f1 != f2) {
            return Float.NaN;
        }
        /* min(+0.0,-0.0) == -0.0 */
 /* 0x80000000 == Float.floatToRawIntBits(-0.0f) */
        if (Float.floatToRawIntBits(f1) == 0x80000000) {
            return -0.0f;
        }
        return f2;
    }

    /**
     * Returns the most negative (closest to negative infinity) of the two
     * arguments.
     */
    public static int min(int i1, int i2) {
        return i1 < i2 ? i1 : i2;
    }

    /**
     * Returns the most negative (closest to negative infinity) of the two
     * arguments.
     */
    public static long min(long l1, long l2) {
        return l1 < l2 ? l1 : l2;
    }

    /**
     * Returns the closest double approximation of the result of raising {@code
     * x} to the power of {@code y}.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code pow((anything), +0.0) = 1.0}</li>
     * <li>{@code pow((anything), -0.0) = 1.0}</li>
     * <li>{@code pow(x, 1.0) = x}</li>
     * <li>{@code pow((anything), NaN) = NaN}</li>
     * <li>{@code pow(NaN, (anything except 0)) = NaN}</li>
     * <li>{@code pow(+/-(|x| > 1), +infinity) = +infinity}</li>
     * <li>{@code pow(+/-(|x| > 1), -infinity) = +0.0}</li>
     * <li>{@code pow(+/-(|x| < 1), +infinity) = +0.0}</li>
     * <li>{@code pow(+/-(|x| < 1), -infinity) = +infinity}</li>
     * <li>{@code pow(+/-1.0 , +infinity) = NaN}</li>
     * <li>{@code pow(+/-1.0 , -infinity) = NaN}</li>
     * <li>{@code pow(+0.0, (+anything except 0, NaN)) = +0.0}</li>
     * <li>{@code pow(-0.0, (+anything except 0, NaN, odd integer)) = +0.0}</li>
     * <li>{@code pow(+0.0, (-anything except 0, NaN)) = +infinity}</li>
     * <li>{@code pow(-0.0, (-anything except 0, NAN, odd integer))} {@code =}
     * {@code +infinity}</li>
     * <li>{@code pow(-0.0, (odd integer)) = -pow( +0 , (odd integer) )}</li>
     * <li>{@code pow(+infinity, (+anything except 0, NaN)) = +infinity}</li>
     * <li>{@code pow(+infinity, (-anything except 0, NaN)) = +0.0}</li>
     * <li>{@code pow(-infinity, (anything)) = -pow(0, (-anything))}</li>
     * <li>{@code pow((-anything), (integer))} {@code =} {@code
     * pow(-1,(integer))*pow(+anything,integer) }</li>
     * <li>{@code pow((-anything except 0 and inf), (non-integer)) = NAN}</li>
     * </ul>
     *
     * @param x the base of the operation.
     * @param y the exponent of the operation.
     * @return {@code x} to the power of {@code y}.
     */
    public static double pow(double x, double y) {
        return VM.pow(x, y);
    }



    /**
     * Returns the result of rounding the argument to an integer. The result is
     * equivalent to {@code (long) Math.floor(d+0.5)}.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code round(+0.0) = +0.0}</li>
     * <li>{@code round(-0.0) = +0.0}</li>
     * <li>{@code round((anything > Long.MAX_VALUE) = Long.MAX_VALUE}</li>
     * <li>{@code round((anything < Long.MIN_VALUE) = Long.MIN_VALUE}</li>
     * <li>{@code round(+infinity) = Long.MAX_VALUE}</li>
     * <li>{@code round(-infinity) = Long.MIN_VALUE}</li>
     * <li>{@code round(NaN) = +0.0}</li>
     * </ul>
     *
     * @param d the value to be rounded.
     * @return the closest integer to the argument.
     */
    public static long round(double d) {
        // check for NaN
        if (d != d) {
            return 0L;
        }
        return (long) floor(d + 0.5d);
    }

    /**
     * Returns the result of rounding the argument to an integer. The result is
     * equivalent to {@code (int) Math.floor(f+0.5)}.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code round(+0.0) = +0.0}</li>
     * <li>{@code round(-0.0) = +0.0}</li>
     * <li>{@code round((anything > Integer.MAX_VALUE) = Integer.MAX_VALUE}</li>
     * <li>{@code round((anything < Integer.MIN_VALUE) = Integer.MIN_VALUE}</li>
     * <li>{@code round(+infinity) = Integer.MAX_VALUE}</li>
     * <li>{@code round(-infinity) = Integer.MIN_VALUE}</li>
     * <li>{@code round(NaN) = +0.0}</li>
     * </ul>
     *
     * @param f the value to be rounded.
     * @return the closest integer to the argument.
     */
    public static int round(float f) {
        // check for NaN
        if (f != f) {
            return 0;
        }
        return (int) floor(f + 0.5f);
    }

    /**
     * Returns the signum function of the argument. If the argument is less than
     * zero, it returns -1.0. If the argument is greater than zero, 1.0 is
     * returned. If the argument is either positive or negative zero, the
     * argument is returned as result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code signum(+0.0) = +0.0}</li>
     * <li>{@code signum(-0.0) = -0.0}</li>
     * <li>{@code signum(+infinity) = +1.0}</li>
     * <li>{@code signum(-infinity) = -1.0}</li>
     * <li>{@code signum(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the value whose signum has to be computed.
     * @return the value of the signum function.
     */
    public static double signum(double d) {
        if (Double.isNaN(d)) {
            return Double.NaN;
        }
        double sig = d;
        if (d > 0) {
            sig = 1.0;
        } else if (d < 0) {
            sig = -1.0;
        }
        return sig;
    }

    /**
     * Returns the signum function of the argument. If the argument is less than
     * zero, it returns -1.0. If the argument is greater than zero, 1.0 is
     * returned. If the argument is either positive or negative zero, the
     * argument is returned as result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code signum(+0.0) = +0.0}</li>
     * <li>{@code signum(-0.0) = -0.0}</li>
     * <li>{@code signum(+infinity) = +1.0}</li>
     * <li>{@code signum(-infinity) = -1.0}</li>
     * <li>{@code signum(NaN) = NaN}</li>
     * </ul>
     *
     * @param f the value whose signum has to be computed.
     * @return the value of the signum function.
     */
    public static float signum(float f) {
        if (Float.isNaN(f)) {
            return Float.NaN;
        }
        float sig = f;
        if (f > 0) {
            sig = 1.0f;
        } else if (f < 0) {
            sig = -1.0f;
        }
        return sig;
    }

    /**
     * Returns the closest double approximation of the sine of the argument. The
     * returned result is within 1 ulp (unit in the last place) of the real
     * result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code sin(+0.0) = +0.0}</li>
     * <li>{@code sin(-0.0) = -0.0}</li>
     * <li>{@code sin(+infinity) = NaN}</li>
     * <li>{@code sin(-infinity) = NaN}</li>
     * <li>{@code sin(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the angle whose sin has to be computed, in radians.
     * @return the sine of the argument.
     */
    public static double sin(double d) {
        return VM.sin(d);
    }

    /**
     * Returns the closest double approximation of the square root of the
     * argument.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code sqrt(+0.0) = +0.0}</li>
     * <li>{@code sqrt(-0.0) = -0.0}</li>
     * <li>{@code sqrt( (anything < 0) ) = NaN}</li>
     * <li>{@code sqrt(+infinity) = +infinity}</li>
     * <li>{@code sqrt(NaN) = NaN}</li>
     * </ul>
     */
    public static double sqrt(double d) {
        return VM.sqrt(d);
    }

    /**
     * Returns the closest double approximation of the tangent of the argument.
     * The returned result is within 1 ulp (unit in the last place) of the real
     * result.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code tan(+0.0) = +0.0}</li>
     * <li>{@code tan(-0.0) = -0.0}</li>
     * <li>{@code tan(+infinity) = NaN}</li>
     * <li>{@code tan(-infinity) = NaN}</li>
     * <li>{@code tan(NaN) = NaN}</li>
     * </ul>
     *
     * @param d the angle whose tangent has to be computed, in radians.
     * @return the tangent of the argument.
     */
    public static double tan(double d) {
        return VM.tan(d);
    }


    /**
     * Returns a pseudo-random double {@code n}, where
     * {@code n >= 0.0 && n < 1.0}. This method reuses a single instance of
     * {@link java.util.Random}. This method is thread-safe because access to
     * the {@code Random} is synchronized, but this harms scalability.
     * Applications may find a performance benefit from allocating a
     * {@code Random} for each of their threads.
     *
     * @return a pseudo-random number.
     */
    public static synchronized double random() {
        if (random == null) {
            random = new Random();
        }
        return random.nextDouble();
    }

    /**
     * Returns the measure in radians of the supplied degree angle. The result
     * is {@code angdeg / 180 * pi}.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code toRadians(+0.0) = +0.0}</li>
     * <li>{@code toRadians(-0.0) = -0.0}</li>
     * <li>{@code toRadians(+infinity) = +infinity}</li>
     * <li>{@code toRadians(-infinity) = -infinity}</li>
     * <li>{@code toRadians(NaN) = NaN}</li>
     * </ul>
     *
     * @param angdeg an angle in degrees.
     * @return the radian measure of the angle.
     */
    public static double toRadians(double angdeg) {
        return angdeg / 180d * PI;
    }

    /**
     * Returns the measure in degrees of the supplied radian angle. The result
     * is {@code angrad * 180 / pi}.
     * <p>
     * Special cases:
     * <ul>
     * <li>{@code toDegrees(+0.0) = +0.0}</li>
     * <li>{@code toDegrees(-0.0) = -0.0}</li>
     * <li>{@code toDegrees(+infinity) = +infinity}</li>
     * <li>{@code toDegrees(-infinity) = -infinity}</li>
     * <li>{@code toDegrees(NaN) = NaN}</li>
     * </ul>
     *
     * @param angrad an angle in radians.
     * @return the degree measure of the angle.
     */
    public static double toDegrees(double angrad) {
        return angrad * 180d / PI;
    }

 
    /**
     * Returns a double with the given magnitude and the sign of {@code sign}.
     * If {@code sign} is NaN, the sign of the result is arbitrary. If you need
     * a determinate sign in such cases, use {@code StrictMath.copySign}.
     *
     * @since 1.6
     */
    public static double copySign(double magnitude, double sign) {
        long magnitudeBits = Double.doubleToRawLongBits(magnitude);
        long signBits = Double.doubleToRawLongBits(sign);
        magnitudeBits = (magnitudeBits & ~Double.SIGN_MASK) | (signBits & Double.SIGN_MASK);
        return Double.longBitsToDouble(magnitudeBits);
    }

    /**
     * Returns a float with the given magnitude and the sign of {@code sign}. If
     * {@code sign} is NaN, the sign of the result is arbitrary. If you need a
     * determinate sign in such cases, use {@code StrictMath.copySign}.
     *
     * @since 1.6
     */
    public static float copySign(float magnitude, float sign) {
        int magnitudeBits = Float.floatToRawIntBits(magnitude);
        int signBits = Float.floatToRawIntBits(sign);
        magnitudeBits = (magnitudeBits & ~Float.SIGN_MASK) | (signBits & Float.SIGN_MASK);
        return Float.intBitsToFloat(magnitudeBits);
    }

    /**
     * Returns the unbiased base-2 exponent of float {@code f}.
     *
     * @since 1.6
     */
    public static int getExponent(float f) {
        int bits = Float.floatToRawIntBits(f);
        bits = (bits & Float.EXPONENT_MASK) >> Float.MANTISSA_BITS;
        return bits - Float.EXPONENT_BIAS;
    }

    /**
     * Returns the unbiased base-2 exponent of double {@code d}.
     *
     * @since 1.6
     */
    public static int getExponent(double d) {
        long bits = Double.doubleToRawLongBits(d);
        bits = (bits & Double.EXPONENT_MASK) >> Double.MANTISSA_BITS;
        return (int) bits - Double.EXPONENT_BIAS;
    }

    // Shifts integer bits as float, if the digits is positive, left-shift; if
    // not, shift to right and calculate its carry.
    private static int shiftIntBits(int bits, int digits) {
        if (digits > 0) {
            return bits << digits;
        }
        // change it to positive
        int absDigits = -digits;
        if (!(Integer.numberOfLeadingZeros(bits & ~Float.SIGN_MASK) <= (32 - absDigits))) {
            return 0;
        }
        int ret = bits >> absDigits;
        boolean halfBit = ((bits >> (absDigits - 1)) & 0x1) == 1;
        if (halfBit) {
            if (Integer.numberOfTrailingZeros(bits) < (absDigits - 1)) {
                ret = ret + 1;
            }
            if (Integer.numberOfTrailingZeros(bits) == (absDigits - 1)) {
                if ((ret & 0x1) == 1) {
                    ret = ret + 1;
                }
            }
        }
        return ret;
    }

    // Shifts long bits as double, if the digits is positive, left-shift; if
    // not, shift to right and calculate its carry.
    private static long shiftLongBits(long bits, long digits) {
        if (digits > 0) {
            return bits << digits;
        }
        // change it to positive
        long absDigits = -digits;
        if (!(Long.numberOfLeadingZeros(bits & ~Double.SIGN_MASK) <= (64 - absDigits))) {
            return 0;
        }
        long ret = bits >> absDigits;
        boolean halfBit = ((bits >> (absDigits - 1)) & 0x1) == 1;
        if (halfBit) {
            // some bits will remain after shifting, calculates its carry
            // subnormal
            if (Long.numberOfTrailingZeros(bits) < (absDigits - 1)) {
                ret = ret + 1;
            }
            if (Long.numberOfTrailingZeros(bits) == (absDigits - 1)) {
                if ((ret & 0x1) == 1) {
                    ret = ret + 1;
                }
            }
        }
        return ret;
    }
}


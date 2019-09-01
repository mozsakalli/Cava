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

import cava.annotation.Keep;

@Keep
public final class Byte extends Number implements Comparable<Byte> {

    public static final Class TYPE = byte[].class.componentType;

    public static final byte MIN_VALUE = -128;
    public static final byte MAX_VALUE = 127;

    private final byte value;

    public Byte(byte value) {
        this.value = value;
    }

    public static Byte valueOf(byte value) {
        return new Byte(value);
    }

    public boolean equals(Object o) {
        return o instanceof Byte && ((Byte) o).value == value;
    }

    public int hashCode() {
        return value;
    }

    public String toString() {
        return toString(value);
    }

    public int compareTo(Byte o) {
        return value - o.value;
    }

    public static String toString(byte v, int radix) {
        return Long.toString(v, radix);
    }

    public static String toString(byte v) {
        return toString(v, 10);
    }

    public static byte parseByte(String s) {
        return (byte) Integer.parseInt(s);
    }

    public byte byteValue() {
        return value;
    }

    public short shortValue() {
        return value;
    }

    public int intValue() {
        return value;
    }

    public long longValue() {
        return value;
    }

    public float floatValue() {
        return (float) value;
    }

    public double doubleValue() {
        return (double) value;
    }
    
    public static int toUnsignedInt(byte x) {
        return ((int) x) & 0xff;
    }
    
}

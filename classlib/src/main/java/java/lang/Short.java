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
public final class Short extends Number implements Comparable<Short> {

    public static final Class TYPE = short[].class.componentType;

    public static final short MIN_VALUE = -32768;
    public static final short MAX_VALUE = 32767;

    private final short value;

    public Short(short value) {
        this.value = value;
    }

    public static Short valueOf(short value) {
        return new Short(value);
    }

    public int compareTo(Short o) {
        return value - o.value;
    }

    public boolean equals(Object o) {
        return o instanceof Short && ((Short) o).value == value;
    }

    public int hashCode() {
        return value;
    }

    public String toString() {
        return toString(value);
    }

    public static String toString(short v, int radix) {
        return Long.toString(v, radix);
    }

    public static String toString(short v) {
        return toString(v, 10);
    }

    public byte byteValue() {
        return (byte) value;
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
}

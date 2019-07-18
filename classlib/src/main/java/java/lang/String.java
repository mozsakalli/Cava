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
import java.util.ArrayList;
import java.util.regex.Pattern;


public final class String implements java.lang.CharSequence, Comparable<String> {

    private static ArrayList<String> str = new ArrayList<String>();
    
    @Keep
    public final char[] value;

    @Keep
    public final int offset;

    @Keep
    public final int count;

    @Keep
    private int hashCode = 0;

    private static final char[] ZERO_CHAR = new char[0];

    /**
     * Initializes a newly created String object so that it represents an empty
     * character sequence.
     */
    public String() {
        value = ZERO_CHAR;
        offset = 0;
        count = 0;
    }

    /**
     * Construct a new String by converting the specified array of bytes using
     * the platform's default character encoding. The length of the new String
     * is a function of the encoding, and hence may not be equal to the length
     * of the byte array. bytes - The bytes to be converted into characters
     * JDK1.1
     */
    public String(byte[] bytes) {
        this(bytes, 0, bytes.length);
    }

    /**
     * Construct a new String by converting the specified subarray of bytes
     * using the platform's default character encoding. The length of the new
     * String is a function of the encoding, and hence may not be equal to the
     * length of the subarray. bytes - The bytes to be converted into
     * charactersoff - Index of the first byte to convertlen - Number of bytes
     * to convert JDK1.1
     */
    public String(byte[] bytes, int off, int len) {
        this(bytesToChars(bytes, off, len, "UTF-8"));
    }

    /**
     * Construct a new String by converting the specified subarray of bytes
     * using the specified character encoding. The length of the new String is a
     * function of the encoding, and hence may not be equal to the length of the
     * subarray. bytes - The bytes to be converted into charactersoff - Index of
     * the first byte to convertlen - Number of bytes to convertenc - The name
     * of a character encoding - If the named encoding is not supported JDK1.1
     */
    public String(byte[] bytes, int off, int len, java.lang.String enc) throws java.io.UnsupportedEncodingException {
        this(bytesToChars(bytes, off, len, enc));
    }

    /**
     * Construct a new String by converting the specified array of bytes using
     * the specified character encoding. The length of the new String is a
     * function of the encoding, and hence may not be equal to the length of the
     * byte array. bytes - The bytes to be converted into charactersenc - The
     * name of a supported character encoding - If the named encoding is not
     * supported JDK1.1
     */
    public String(byte[] bytes, java.lang.String enc) throws java.io.UnsupportedEncodingException {
        this(bytesToChars(bytes, 0, bytes.length, enc));
    }

    private static char[] bytesToChars(byte[] bytes, int offset, int length, String encoding) {
        char[] chars = new char[length];
        int end = offset + length;
        int ptr = offset;
        int dest = 0;
        while (ptr < end) {
            int c = bytes[ptr++];
            if (c < 0x80) {
                chars[dest++] = (char) c;
            } else if (c < 0xE0) {
                if (ptr < end) {
                    chars[dest++] = (char) (((c & 0x3F) << 6) | ((bytes[ptr++]) & 0x7F));
                } else {
                    break;
                }
            } else if (c < 0xF0) {
                if (ptr + 1 < end) {
                    int c2 = bytes[ptr++];
                    chars[dest++] = (char) (((c & 0x1F) << 12) | ((c2 & 0x7F) << 6) | ((bytes[ptr++]) & 0x7F));
                } else {
                    break;
                }
            } else if (ptr + 2 < end) {
                int c2 = bytes[ptr++];
                int c3 = bytes[ptr++];
                chars[dest++] = (char) (((c & 0x0F) << 18) | ((c2 & 0x7F) << 12) | ((c3 & 0x7F) << 6) | ((bytes[ptr++]) & 0x7F));
            } else {
                break;
            }
        }
        return chars;
    }

    /**
     * Allocates a new String so that it represents the sequence of characters
     * currently contained in the character array argument. The contents of the
     * character array are copied; subsequent modification of the character
     * array does not affect the newly created string. value - the initial value
     * of the string. - if value is null.
     */
    public String(char[] value) {
        this.value = value;
        this.offset = 0;
        this.count = value.length;
    }

    private StringIndexOutOfBoundsException failedBoundsCheck(int arrayLength, int offset, int count) {
        throw new StringIndexOutOfBoundsException(count);
    }

    /**
     * Allocates a new String that contains characters from a subarray of the
     * character array argument. The offset argument is the index of the first
     * character of the subarray and the count argument specifies the length of
     * the subarray. The contents of the subarray are copied; subsequent
     * modification of the character array does not affect the newly created
     * string. value - array that is the source of characters.offset - the
     * initial offset.count - the length. - if the offset and count arguments
     * index characters outside the bounds of the value array. - if value is
     * null.
     */
    public String(char[] data, int offset, int charCount) {
        if ((offset | charCount) < 0 || charCount > data.length - offset) {
            throw failedBoundsCheck(data.length, offset, charCount);
        }
        this.offset = 0;
        this.value = new char[charCount];
        this.count = charCount;
        System.arraycopy(data, offset, value, 0, count);
    }

    String(int offset, int charCount, char[] data) {
        if ((offset | charCount) < 0 || charCount > data.length - offset) {
            throw failedBoundsCheck(data.length, offset, charCount);
        }
        this.offset = offset;
        this.value = data;
        this.count = charCount;
    }

    /**
     * Initializes a newly created String object so that it represents the same
     * sequence of characters as the argument; in other words, the newly created
     * string is a copy of the argument string. value - a String.
     */
    public String(java.lang.String value) {
        this.offset = value.offset;
        this.value = value.value;
        this.count = value.count;
    }

    /**
     * Allocates a new string that contains the sequence of characters currently
     * contained in the string buffer argument. The contents of the string
     * buffer are copied; subsequent modification of the string buffer does not
     * affect the newly created string. buffer - a StringBuffer. - If buffer is
     * null.
     */
    public String(java.lang.StringBuffer buffer) {
        this.offset = 0;
        this.count = buffer.length();
        this.value = new char[count];
        buffer.getChars(0, count, value, 0);
    }

    /**
     * Returns the character at the specified index. An index ranges from 0 to
     * length() - 1. The first character of the sequence is at index 0, the next
     * at index 1, and so on, as for array indexing.
     */
    public final char charAt(int index) {
        return value[offset + index];
    }

    public final int codePointAt(int index) {
        return value[offset + index];
    }

    /**
     * Compares two strings lexicographically. The comparison is based on the
     * Unicode value of each character in the strings. The character sequence
     * represented by this String object is compared lexicographically to the
     * character sequence represented by the argument string. The result is a
     * negative integer if this String object lexicographically precedes the
     * argument string. The result is a positive integer if this String object
     * lexicographically follows the argument string. The result is zero if the
     * strings are equal; compareTo returns 0 exactly when the method would
     * return true. This is the definition of lexicographic ordering. If two
     * strings are different, then either they have different characters at some
     * index that is a valid index for both strings, or their lengths are
     * different, or both. If they have different characters at one or more
     * index positions, let k be the smallest such index; then the string whose
     * character at position k has the smaller value, as determined by using the
     * < operator, lexicographically precedes the other string. In this case,
     * compareTo returns the difference of the two character values at position
     * k in the two string -- that is, the value:
     * this.charAt(k)-anotherString.charAt(k) If there is no index position at
     * which they differ, then the shorter string lexicographically precedes the
     * longer string. In this case, compareTo returns the difference of the
     * lengths of the strings -- that is, the value:
     * this.length()-anotherString.length()
     */
    public int compareTo(java.lang.String anotherString) {
        if (anotherString == this) {
            return 0;
        }
        int minL = Math.min(anotherString.length(), length());
        for (int iter = 0; iter < minL; iter++) {
            char a = value[offset + iter];
            char b = anotherString.value[anotherString.offset + iter];
            if (a != b) {
                return a - b;
            }
        }
        return length() - anotherString.length();
    }

    /**
     * Concatenates the specified string to the end of this string. If the
     * length of the argument string is 0, then this String object is returned.
     * Otherwise, a new String object is created, representing a character
     * sequence that is the concatenation of the character sequence represented
     * by this String object and the character sequence represented by the
     * argument string. Examples: "cares".concat("s") returns "caress"
     * "to".concat("get").concat("her") returns "together"
     */
    public java.lang.String concat(java.lang.String str) {
        char[] n = new char[length() + str.length()];
        System.arraycopy(value, offset, n, 0, count);
        System.arraycopy(str.value, str.offset, n, count, str.count);
        return new String(n);
    }

    /**
     * Tests if this string ends with the specified suffix.
     */
    public boolean endsWith(java.lang.String suffix) {
        if (suffix.length() > length()) {
            return false;
        }
        int offset = suffix.length() - 1;
        for (int iter = length() - 1; offset >= 0; iter--) {
            if (value[this.offset + iter] != suffix.value[suffix.offset + offset]) {
                return false;
            }
            offset--;
        }
        return true;
    }

    /**
     * Compares this string to the specified object. The result is true if and
     * only if the argument is not null and is a String object that represents
     * the same sequence of characters as this object.
     */
    public boolean equals(java.lang.Object anObject) {
        if (anObject == this) {
            return true;
        }
        if (anObject == null || anObject.getClass() != String.class) {
            return false;
        }
        String s = (String) anObject;
        if (s.length() != length()) {
            return false;
        }
        for (int iter = 0; iter < count; iter++) {
            if (value[offset + iter] != s.value[s.offset + iter]) {
                return false;
            }
        }
        return true;
    }

    /**
     * Compares this String to another String, ignoring case considerations. Two
     * strings are considered equal ignoring case if they are of the same
     * length, and corresponding characters in the two strings are equal
     * ignoring case. Two characters c1 and c2 are considered the same, ignoring
     * case if at least one of the following is true: The two characters are the
     * same (as compared by the == operator). Applying the method
     * Character.toUpperCase(char) to each character produces the same result.
     * Applying the method Character.toLowerCase(char) to each character
     * produces the same result.
     */
    public boolean equalsIgnoreCase(java.lang.String s) {
        if (s == null || s.count != this.count) {
            return false;
        }

        char[] src = this.value;
        char[] dst = s.value;
        int sp = this.offset;
        int dp = s.offset;
        int len = this.count;
        for (int i = 0; i < len; i++) {
            int sc = src[sp++];
            int dc = dst[dp++];
            if (sc != dc) {
                if (sc >= 'A' && sc <= 'Z') {
                    sc -= 'A';
                }
                if (dc >= 'A' && dc <= 'Z') {
                    dc -= 'A';
                }
                if (sc != dc) {
                    return false;
                }
            }
        }
        return true;
    }

    /**
     * Convert this String into bytes according to the platform's default
     * character encoding, storing the result into a new byte array.
     */
    public byte[] getBytes() {
        try {
            return getBytes("UTF-8");
        } catch (java.io.UnsupportedEncodingException e) {
            // dumbass checked exception
            return null;
        }
    }

    /**
     * Convert this String into bytes according to the specified character
     * encoding, storing the result into a new byte array.
     */
    public byte[] getBytes(java.lang.String enc) throws java.io.UnsupportedEncodingException {
        int len = 0;
        for (int i = 0; i < this.count; i++) {
            int c = this.value[offset + i] & 0xff;
            if (c <= 0x7F) {
                len += 1;
            } else if (c <= 0x7FF) {
                len += 2;
            } else if (c <= 0xFFFF) {
                len += 3;
            } else {
                len += 4;
            }
        }
        byte[] bytes = new byte[len];
        int ptr = 0;
        for (int i = 0; i < this.count; i++) {
            int c = this.value[offset + i] & 0xff;
            if (c <= 0x7F) {
                bytes[ptr++] = (byte) (c);
            } else if (c <= 0x7FF) {
                bytes[ptr++] = (byte) (0xC0 | (c >> 6));
                bytes[ptr++] = (byte) (0x80 | (c & 63));
            } else if (c <= 0xFFFF) {
                bytes[ptr++] = (byte) (0xE0 | (c >> 12));
                bytes[ptr++] = (byte) (0x80 | ((c >> 6) & 63));
                bytes[ptr++] = (byte) (0x80 | (c & 63));
            } else {
                bytes[ptr++] = (byte) (0xF0 | (c >> 18));
                bytes[ptr++] = (byte) (0x80 | ((c >> 12) & 63));
                bytes[ptr++] = (byte) (0x80 | ((c >> 6) & 63));
                bytes[ptr++] = (byte) (0x80 | (c & 63));
            }
        }
        return bytes;
    }

    /**
     * Copies characters from this string into the destination character array.
     * The first character to be copied is at index srcBegin; the last character
     * to be copied is at index srcEnd-1 (thus the total number of characters to
     * be copied is srcEnd-srcBegin). The characters are copied into the
     * subarray of dst starting at index dstBegin and ending at index: dstbegin
     * + (srcEnd-srcBegin) - 1
     */
    public void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin) {
        for (int iter = srcBegin; iter < srcEnd; iter++) {
            dst[dstBegin] = value[offset + iter];
            dstBegin++;
        }
    }

    @Override
    public int hashCode() {
        int h = this.hashCode;
        if (h == 0 && count > 0) {
            int o = offset;
            int e = o + count;
            while (o < e) {
                h = h * 31 + value[o++];
            }
            hashCode = h;
        }
        return h;
    }

    /**
     * Returns the index within this string of the first occurrence of the
     * specified character. If a character with value ch occurs in the character
     * sequence represented by this String object, then the index of the first
     * such occurrence is returned -- that is, the smallest value such that:
     * this.charAt( ) == ch is true. If no such character occurs in this string,
     * then -1 is returned.
     */
    public int indexOf(int ch) {
        return indexOf(ch, 0);
    }

    /**
     * Returns the index within this string of the first occurrence of the
     * specified character, starting the search at the specified index. If a
     * character with value ch occurs in the character sequence represented by
     * this String object at an index no smaller than fromIndex, then the index
     * of the first such occurrence is returned--that is, the smallest value k
     * such that: (this.charAt( ) == ch) && ( >= fromIndex) is true. If no such
     * character occurs in this string at or after position fromIndex, then -1
     * is returned. There is no restriction on the value of fromIndex. If it is
     * negative, it has the same effect as if it were zero: this entire string
     * may be searched. If it is greater than the length of this string, it has
     * the same effect as if it were equal to the length of this string: -1 is
     * returned.
     */
    public int indexOf(int ch, int fromIndex) {
        for (int iter = offset + fromIndex; iter < count + offset; iter++) {
            if (value[iter] == ch) {
                return iter - offset;
            }
        }
        return -1;
    }

    /**
     * Returns the index within this string of the first occurrence of the
     * specified substring. The integer returned is the smallest value such
     * that: this.startsWith(str, ) is true.
     */
    public int indexOf(java.lang.String string) {
        int start = 0;
        int subCount = string.count;
        int _count = count;
        if (subCount > 0) {
            if (subCount > _count) {
                return -1;
            }
            char[] target = string.value;
            int subOffset = string.offset;
            char firstChar = target[subOffset];
            int end = subOffset + subCount;
            while (true) {
                int i = indexOf(firstChar, start);
                if (i == -1 || subCount + i > _count) {
                    return -1; // handles subCount > count || start >= count
                }
                int o1 = offset + i, o2 = subOffset;
                char[] _value = value;
                while (++o2 < end && _value[++o1] == target[o2]) {
                    // Intentionally empty
                }
                if (o2 == end) {
                    return i;
                }
                start = i + 1;
            }
        }
        return start < _count ? start : _count;
    }

    /**
     * Returns the index within this string of the first occurrence of the
     * specified substring, starting at the specified index. The integer
     * returned is the smallest value such that: this.startsWith(str, ) && ( >=
     * fromIndex) is true. There is no restriction on the value of fromIndex. If
     * it is negative, it has the same effect as if it were zero: this entire
     * string may be searched. If it is greater than the length of this string,
     * it has the same effect as if it were equal to the length of this string:
     * -1 is returned.
     */
    public int indexOf(java.lang.String subString, int start) {
        if (start < 0) {
            start = 0;
        }
        int subCount = subString.count;
        int _count = count;
        if (subCount > 0) {
            if (subCount + start > _count) {
                return -1;
            }
            char[] target = subString.value;
            int subOffset = subString.offset;
            char firstChar = target[subOffset];
            int end = subOffset + subCount;
            while (true) {
                int i = indexOf(firstChar, start);
                if (i == -1 || subCount + i > _count) {
                    return -1; // handles subCount > count || start >= count
                }
                int o1 = offset + i, o2 = subOffset;
                char[] _value = value;
                while (++o2 < end && _value[++o1] == target[o2]) {
                    // Intentionally empty
                }
                if (o2 == end) {
                    return i;
                }
                start = i + 1;
            }
        }
        return start < _count ? start : _count;
    }

    /**
     * Returns a canonical representation for the string object. A pool of
     * strings, initially empty, is maintained privately by the class String.
     * When the intern method is invoked, if the pool already contains a string
     * equal to this String object as determined by the equals(Object) method,
     * then the string from the pool is returned. Otherwise, this String object
     * is added to the pool and a reference to this String object is returned.
     * It follows that for any two strings s and t, s.intern()==t.intern() is
     * true if and only if s.equals(t) is true. All literal strings and
     * string-valued constant expressions are interned. String literals are
     * defined in Section 3.10.5 of the Java Language Specification
     */
    public java.lang.String intern() {
        int off = str.indexOf(this);
        if (off > -1) {
            return str.get(off);
        }
        str.add(this);
        return this;
    }

    /**
     * Returns the index within this string of the last occurrence of the
     * specified character. That is, the index returned is the largest value
     * such that: this.charAt( ) == ch is true. The String is searched backwards
     * starting at the last character.
     */
    public int lastIndexOf(int ch) {
        for (int iter = count + offset - 1; iter > offset; iter--) {
            if (value[iter] == ch) {
                return iter - offset;
            }
        }
        return -1;
    }

    /**
     * Returns the index within this string of the last occurrence of the
     * specified character, searching backward starting at the specified index.
     * That is, the index returned is the largest value such that:
     * (this.charAt(k) == ch) && (k <= fromIndex) is true.
     */
    public int lastIndexOf(int ch, int start) {
        int _count = count;
        int _offset = offset;
        char[] _value = value;
        if (start >= 0) {
            if (start >= _count) {
                start = _count - 1;
            }
            for (int i = _offset + start; i >= _offset; --i) {
                if (_value[i] == ch) {
                    return i - _offset;
                }
            }
        }
        return -1;
    }

    /**
     * Searches in this string for the last index of the specified string. The
     * search for the string starts at the end and moves towards the beginning
     * of this string.
     *
     * @param string the string to find.
     * @return the index of the first character of the specified string in this
     * string, -1 if the specified string is not a substring.
     * @throws NullPointerException if {@code string} is {@code null}.
     */
    public int lastIndexOf(String string) {
        return lastIndexOf(string, length());
    }

    /**
     * Searches in this string for the index of the specified string. The search
     * for the string starts at the specified offset and moves towards the
     * beginning of this string.
     *
     * @param subString the string to find.
     * @param start the starting offset.
     * @return the index of the first character of the specified string in this
     * string , -1 if the specified string is not a substring.
     * @throws NullPointerException if {@code subString} is {@code null}.
     */
    public int lastIndexOf(String subString, int start) {
        int count = length();
        int subCount = subString.length();
        if (subCount <= count && start >= 0) {
            if (subCount > 0) {
                if (start > count - subCount) {
                    start = count - subCount;
                }
                // count and subCount are both >= 1
                char[] target = subString.toCharArray();
                int subOffset = 0;
                char firstChar = target[subOffset];
                int end = subOffset + subCount;
                while (true) {
                    int i = lastIndexOf(firstChar, start);
                    if (i == -1) {
                        return -1;
                    }
                    int o1 = i, o2 = subOffset;
                    while (++o2 < end && value[offset + (++o1)] == target[o2]) {
                        // Intentionally empty
                    }
                    if (o2 == end) {
                        return i;
                    }
                    start = i - 1;
                }
            }
            return start < count ? start : count;
        }
        return -1;
    }

    /**
     * Returns the length of this string. The length is equal to the number of
     * 16-bit Unicode characters in the string.
     */
    public int length() {
        return count;
    }

    /**
     * Compares the specified string to this string and compares the specified
     * range of characters to determine if they are the same.
     *
     * @param thisStart the starting offset in this string.
     * @param string the string to compare.
     * @param start the starting offset in the specified string.
     * @param length the number of characters to compare.
     * @return {@code true} if the ranges of characters are equal, {@code false}
     * otherwise
     * @throws NullPointerException if {@code string} is {@code null}.
     */
    public boolean regionMatches(int thisStart, String string, int start, int length) {
        if (string == null) {
            throw new NullPointerException("string == null");
        }
        if (start < 0 || string.count - start < length) {
            return false;
        }
        if (thisStart < 0 || count - thisStart < length) {
            return false;
        }
        if (length <= 0) {
            return true;
        }
        int o1 = offset + thisStart, o2 = string.offset + start;
        char[] value1 = value;
        char[] value2 = string.value;
        for (int i = 0; i < length; ++i) {
            if (value1[o1 + i] != value2[o2 + i]) {
                return false;
            }
        }
        return true;
    }

    /**
     * Tests if two string regions are equal. A substring of this String object
     * is compared to a substring of the argument other. The result is true if
     * these substrings represent character sequences that are the same,
     * ignoring case if and only if ignoreCase is true. The substring of this
     * String object to be compared begins at index toffset and has length len.
     * The substring of other to be compared begins at index ooffset and has
     * length len. The result is false if and only if at least one of the
     * following is true: toffset is negative. ooffset is negative. toffset+len
     * is greater than the length of this String object. ooffset+len is greater
     * than the length of the other argument. There is some nonnegative integer
     * k less than len such that: this.charAt(toffset+k) !=
     * other.charAt(ooffset+k) ignoreCase is true and there is some nonnegative
     * integer less than len such that:
     * Character.toLowerCase(this.charAt(toffset+k)) !=
     * Character.toLowerCase(other.charAt(ooffset+k)) and:
     * Character.toUpperCase(this.charAt(toffset+k)) !=
     * Character.toUpperCase(other.charAt(ooffset+k))
     */
    public boolean regionMatches(boolean ignoreCase, int thisStart, String string, int start, int length) {
        if (!ignoreCase) {
            return regionMatches(thisStart, string, start, length);
        }
        if (string == null) {
            throw new NullPointerException("string == null");
        }
        if (thisStart < 0 || length > count - thisStart) {
            return false;
        }
        if (start < 0 || length > string.count - start) {
            return false;
        }
        thisStart += offset;
        start += string.offset;
        int end = thisStart + length;
        char[] target = string.value;
        while (thisStart < end) {
            char c1 = value[thisStart++];
            char c2 = target[start++];
            if (c1 != c2 && foldCase(c1) != foldCase(c2)) {
                return false;
            }
        }
        return true;
    }

    /**
     * This isn't equivalent to either of ICU's u_foldCase case folds, and thus
     * any of the Unicode case folds, but it's what the RI uses.
     */
    private char foldCase(char ch) {
        if (ch < 128) {
            if ('A' <= ch && ch <= 'Z') {
                return (char) (ch + ('a' - 'A'));
            }
            return ch;
        }
        return Character.toLowerCase(Character.toUpperCase(ch));
    }

    /**
     * Returns a new string resulting from replacing all occurrences of oldChar
     * in this string with newChar. If the character oldChar does not occur in
     * the character sequence represented by this String object, then a
     * reference to this String object is returned. Otherwise, a new String
     * object is created that represents a character sequence identical to the
     * character sequence represented by this String object, except that every
     * occurrence of oldChar is replaced by an occurrence of newChar. Examples:
     * "mesquite in your cellar".replace('e', 'o') returns "mosquito in your
     * collar" "the war of baronets".replace('r', 'y') returns "the way of
     * bayonets" "sparring with a purple porpoise".replace('p', 't') returns
     * "starring with a turtle tortoise" "JonL".replace('q', 'x') returns "JonL"
     * (no change)
     */
    public java.lang.String replace(char oldChar, char newChar) {
        char[] buffer = value;
        int _offset = offset;
        int _count = count;

        int idx = _offset;
        int last = _offset + _count;
        boolean copied = false;
        while (idx < last) {
            if (buffer[idx] == oldChar) {
                if (!copied) {
                    char[] newBuffer = new char[_count];
                    System.arraycopy(buffer, _offset, newBuffer, 0, _count);
                    buffer = newBuffer;
                    idx -= _offset;
                    last -= _offset;
                    copied = true;
                }
                buffer[idx] = newChar;
            }
            idx++;
        }

        return copied ? new String(buffer) : this;
    }

    /**
     * Tests if this string starts with the specified prefix.
     */
    public boolean startsWith(java.lang.String prefix) {
        return startsWith(prefix, 0);
    }

    /**
     * Tests if this string starts with the specified prefix beginning at the
     * specified index.
     */
    public boolean startsWith(java.lang.String prefix, int toffset) {
        if (toffset + prefix.count > count) {
            return false;
        }
        for (int iter = 0; iter < prefix.count; iter++) {
            if (prefix.value[iter + prefix.offset] != value[iter + toffset + offset]) {
                return false;
            }
        }
        return true;
    }

    /**
     * Returns a new string that is a substring of this string. The substring
     * begins with the character at the specified index and extends to the end
     * of this string. Examples: "unhappy".substring(2) returns "happy"
     * "Harbison".substring(3) returns "bison" "emptiness".substring(9) returns
     * "" (an empty string)
     */
    public java.lang.String substring(int start) {
        if (start == 0) {
            return this;
        }
        if (start >= 0 && start <= count) {
            //return new String(offset + start, count - start, value);
            return new String(value, offset + start, count - start);
        }
        throw new ArrayIndexOutOfBoundsException(start);
    }

    /**
     * Returns a new string that is a substring of this string. The substring
     * begins at the specified beginIndex and extends to the character at index
     * endIndex - 1. Thus the length of the substring is endIndex-beginIndex.
     * Examples: "hamburger".substring(4, 8) returns "urge"
     * "smiles".substring(1, 5) returns "mile"
     */
    public java.lang.String substring(int start, int end) {
        if (start == 0 && end == count) {
            return this;
        }
        // NOTE last character not copied!
        // Fast range check.
        if (start >= 0 && start <= end && end <= count) {
            //return new String(offset + start, end - start, value);
            return new String(value, offset + start, end - start);
        }
        throw new ArrayIndexOutOfBoundsException(start);
    }

    private char[] toCharNoCopy() {
        if (offset == 0 && value.length == count) {
            return value;
        }
        return toCharArray();
    }

    /**
     * Converts this string to a new character array.
     */
    public char[] toCharArray() {
        char[] buffer = new char[count];
        System.arraycopy(value, offset, buffer, 0, count);
        return buffer;
    }

    /**
     * Converts all of the characters in this String to lower case.
     */
//    public java.lang.String toLowerCase(){
//        char[] c = new char[length()];
//        for(int iter = 0 ; iter < count ; iter++) {
//            c[iter] = Character.toLowerCase(value[offset + iter]);
//        }
//        return new String(c);
//    }
    public String toLowerCase() {
        if (this.count == 0) {
            return this;
        }
        char[] newChars = new char[count];
        for (int i = 0; i < count; i++) {
            char c = value[offset + i];
            if (c >= 'A' && c <= 'Z') {
                c = (char) ((c - 'A') + 'a');
            }
            newChars[i] = c;
        }
        return new String(newChars);
    }

    /**
     * This object (which is already a string!) is itself returned.
     */
    public java.lang.String toString() {
        return this;
    }

    /**
     * Converts all of the characters in this String to upper case.
     */
//    public java.lang.String toUpperCase(){
//        char[] c = new char[length()];
//        for(int iter = 0 ; iter < count ; iter++) {
//            c[iter] = Character.toUpperCase(value[offset + iter]);
//        }
//        return new String(c);
//    }
    public String toUpperCase() {
        if (this.count == 0) {
            return this;
        }
        char[] newChars = new char[count];
        for (int i = 0; i < count; i++) {
            char c = value[offset + i];
            if (c >= 'a' && c <= 'z') {
                c = (char) ((c - 'a') + 'A');
            }
            newChars[i] = c;
        }
        return new String(newChars);
    }

    /**
     * Removes white space from both ends of this string. If this String object
     * represents an empty character sequence, or the first and last characters
     * of character sequence represented by this String object both have codes
     * greater than 'u0020' (the space character), then a reference to this
     * String object is returned. Otherwise, if there is no character with a
     * code greater than 'u0020' in the string, then a new String object
     * representing an empty string is created and returned. Otherwise, let k be
     * the index of the first character in the string whose code is greater than
     * 'u0020', and let m be the index of the last character in the string whose
     * code is greater than 'u0020'. A new String object is created,
     * representing the substring of this string that begins with the character
     * at index k and ends with the character at index m-that is, the result of
     * this.substring(k,m+1). This method may be used to trim whitespace from
     * the beginning and end of a string; in fact, it trims all ASCII control
     * characters as well.
     */
    public java.lang.String trim() {
        int start = offset, last = offset + count - 1;
        int end = last;
        while ((start <= end) && (value[start] <= ' ')) {
            start++;
        }
        while ((end >= start) && (value[end] <= ' ')) {
            end--;
        }
        if (start == offset && end == last) {
            return this;
        }
        //return new String(start, end - start + 1, value);
        return new String(value, start, end - start + 1);
    }

    /**
     * Returns the string representation of the boolean argument.
     */
    public static java.lang.String valueOf(boolean value) {
        return value ? "true" : "false";
    }

    /**
     * Returns the string representation of the char argument.
     */
    public static java.lang.String valueOf(char value) {
        String s = new String(0, 1, new char[]{value});
        s.hashCode = value;
        return s;
    }

    public static java.lang.String valueOf(char[] data) {
        return new String(data, 0, data.length);
    }

    /**
     * Returns the string representation of a specific subarray of the char
     * array argument. The offset argument is the index of the first character
     * of the subarray. The count argument specifies the length of the subarray.
     * The contents of the subarray are copied; subsequent modification of the
     * character array does not affect the newly created string.
     */
    public static java.lang.String valueOf(char[] data, int start, int length) {
        return new String(data, start, length);
    }

    /**
     * Returns the string representation of the double argument. The
     * representation is exactly the one returned by the Double.toString method
     * of one argument.
     */
    public static java.lang.String valueOf(double value) {
        return Double.toString(value);
    }

    /**
     * Returns the string representation of the float argument. The
     * representation is exactly the one returned by the Float.toString method
     * of one argument.
     */
    public static java.lang.String valueOf(float f) {
        return Float.toString(f);
    }

    /**
     * Returns the string representation of the int argument. The representation
     * is exactly the one returned by the Integer.toString method of one
     * argument.
     */
    public static java.lang.String valueOf(int i) {
        return Integer.toString(i);
    }

    /**
     * Returns the string representation of the long argument. The
     * representation is exactly the one returned by the Long.toString method of
     * one argument.
     */
    public static java.lang.String valueOf(long l) {
        return Long.toString(l);
    }

    /**
     * Returns the string representation of the Object argument.
     */
    public static java.lang.String valueOf(java.lang.Object obj) {
        return obj == null ? "null" : obj.toString();
    }

    @Override
    public CharSequence subSequence(int start, int end) {
        return substring(start, end);
    }

    public String replaceAll(String regex, String replacement) {
        return Pattern.compile(regex).matcher(this).replaceAll(replacement);
    }

    public String[] split(String regex, int limit) {
        return Pattern.compile(regex).split(this, limit);
    }

    public String[] split(String regex) {
        return Pattern.compile(regex).split(this, 0);
    }

    public boolean isEmpty() {
        return count == 0;
    }

    public String replace(CharSequence target, CharSequence replace) {
        if (target.length() == 0) {
            return this.infuse(replace.toString());
        }

        String targetString = target.toString();
        String replaceString = replace.toString();

        int targetSize = target.length();

        StringBuilder returnValue = new StringBuilder();
        String unhandled = this;

        int index = -1;
        while ((index = unhandled.indexOf(targetString)) != -1) {
            returnValue.append(unhandled.substring(0, index)).append(replaceString);
            unhandled = unhandled.substring(index + targetSize,
                    unhandled.length());
        }

        returnValue.append(unhandled);
        return returnValue.toString();
    }

    private String infuse(String infuseWith) {
        StringBuilder retVal = new StringBuilder();

        String me = this;
        for (int i = 0; i < me.length(); i++) {
            retVal.append(infuseWith).append(me.substring(i, i + 1));
        }

        retVal.append(infuseWith);
        return retVal.toString();
    }

    public boolean contains(CharSequence match) {
        return indexOf(match.toString()) != -1;
    }

}

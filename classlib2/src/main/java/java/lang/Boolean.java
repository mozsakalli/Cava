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

/**
 * The Boolean class wraps a value of the primitive type boolean in an object. An object of type Boolean contains a single field whose type is boolean.
 * Since: JDK1.0, CLDC 1.0
 */
@Keep
public final class Boolean{
    /**
     * The Boolean object corresponding to the primitive value false.
     */
    public static final java.lang.Boolean FALSE = new Boolean(false);

    /**
     * The Boolean object corresponding to the primitive value true.
     */
    public static final java.lang.Boolean TRUE = new Boolean(true);

    public static final Class TYPE = boolean[].class.componentType;
    
    private boolean value;
    
    /**
     * Allocates a Boolean object representing the value argument.
     * value - the value of the Boolean.
     */
    public Boolean(boolean value){
         this.value = value;
    }

    /**
     * Returns the value of this Boolean object as a boolean primitive.
     */
    public boolean booleanValue(){
        return value;
    }

    /**
     * Returns true if and only if the argument is not null and is a Boolean object that represents the same boolean value as this object.
     */
    public boolean equals(java.lang.Object obj){
        return obj != null && obj.getClass() == getClass() && ((Boolean)obj).value == value;
    }

    /**
     * Returns a hash code for this Boolean object.
     */
    public int hashCode(){
        return value ? 1231 : 1237;
    }

    /**
     * Returns a String object representing this Boolean's value. If this object represents the value true, a string equal to "true" is returned. Otherwise, a string equal to "false" is returned.
     */
    public java.lang.String toString(){
        if(value) {
            return "true";
        }
        return "false"; 
    }

    /**
     * Returns the object instance of i
     * @param i the primitive
     * @return object instance
     */
    public static Boolean valueOf(final boolean b) {
            return b ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Boolean valueOf(final String b) {
            return valueOf(parseBoolean(b));
    }

    public static boolean parseBoolean(final String s) {
            return (s != null) && s.equalsIgnoreCase("true");
    }

    public int compareTo(final Boolean b2) {
        if(b2.value == value) {
            return 0;
        }
        if(b2.value) {
            return -1;
        }
        return 1;
    }
}

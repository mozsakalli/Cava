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

package java.text;

/**
 * An abstract class for parsing and formatting localisation sensitive information, compatible with JDK 6.
 * 
 * @see http://docs.oracle.com/javase/6/docs/api/java/text/Format.html
 * @author Eric Coolman
 */
public abstract class Format implements Cloneable {
	/**
	 * Format an object.
	 * 
	 * @param source object to be formatted to text.
	 * @return formatted text.
	 * @throws IllegalArgumentException if the source can not be formatted. 
	 */
	public abstract String format(Object source) throws IllegalArgumentException;

	/**
	 * Parse an string to an object.
	 * 
	 * @param source document to be parsed.
	 * @return parsed object.
	 * @throws ParseException if the source could not be parsed.
	 */
	public abstract Object parseObject(String source) throws ParseException;
}
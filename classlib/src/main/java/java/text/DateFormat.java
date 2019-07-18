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

import java.util.Date;


public class DateFormat extends java.text.Format {
	/**
	 * Constant for full style parsing/formatting pattern.
	 */
	public static final int FULL = 0;
	/**
	 * Constant for long style parsing/formatting pattern.
	 */
	public static final int LONG = 1;
	/**
	 * Constant for medium style parsing/formatting pattern.
	 */
	public static final int MEDIUM = 2;
	/**
	 * Constant for short style parsing/formatting pattern.
	 */
	public static final int SHORT = 3;
	/**
	 * Constant for default style (MEDIUM) parsing/formatting pattern.
	 */
	public static final int DEFAULT = MEDIUM;
        
                    private static int NONE = -1;

	private int dateStyle;
	private int timeStyle;

	/**
	 * Construct a date formatter using default patterns for date and time (SHORT/SHORT).
	 */
	DateFormat() {
		this(SHORT, SHORT);
	}

	/**
	 * 
	 */
	DateFormat(int dateStyle, int timeStyle) {
		this.dateStyle = dateStyle;
		this.timeStyle = timeStyle;
	}


	/**
	 * Format a given object.
	 * 
	 * @obj object to be formatted.
	 * @return formatted object.
	 * @throws IllegalArgumentException of the source can not be formatted.
	 */
	@Override
	public String format(Object obj) throws IllegalArgumentException {
		return format(obj, new StringBuffer());
	}

	/**
	 * Format a given object.
	 * 
	 * @param source object to be formatted.
	 * @param toAppendTo buffer to which to append output.
	 * @return  formatted date.
	 * @throws IllegalArgumentException of the source can not be formatted.
	 */
	public String format(Object obj, StringBuffer toAppendTo) throws IllegalArgumentException {
                        return format((Date)obj, toAppendTo);
                    }

	/**
	 * Format a given date.
	 * 
	 * @param source date to be formatted.
	 * @return  formatted date.
	 */
	public String format(Date source) {
		return format(source, null);
	}

	/**
	 * Format a given date.
	 * 
	 * @param source date to be formatted.
	 * @param toAppendTo buffer to which to append output.
	 * @return  formatted date.
	 */
	native String format(Date source, StringBuffer toAppendTo);

	/**
	 * NOT IMPLEMENTED - use SimpleDateFormat for parsing instead.
	 */
	@Override
	public Object parseObject(String source) throws ParseException {
		// can't parse because we don't know the L10NManagers templates
		throw new ParseException("Not implemented", 0);
	}

	/**
	 * NOT IMPLEMENTED - use SimpleDateFormat for parsing instead.
	 */
	public Date parse(String source) throws ParseException {
		return (Date) parseObject(source);
	}

	/**
	 * Get a DateFormat instance with default style for date/time (SHORT/SHORT).
	 * @return a DateFormat instance.
	 */
	public static final DateFormat getInstance() {
		return getDateTimeInstance(SHORT, SHORT);
	}

	/**
	 * Get a DateFormat instance with default style for date (SHORT). 
	 * @return a DateFormat instance.
	 */
	public static final DateFormat getDateInstance() {
		return getDateInstance(SHORT);
	}

	/**
	 * Get a DateFormat instance with default style for time (SHORT).
	 * @return a DateFormat instance.
	 */
	public static final DateFormat getTimeInstance() {
		return getTimeInstance(SHORT);
	}

	/**
	 * Get a DateFormat instance that uses a given style for dates. 
	 * 
	 * @param style style to use for parsing and formatting (SHORT, MEDIUM, LONG, FULL, DEFAULT);
	 * @return a DateFormat instance.
	 * @see #SHORT
	 * @see #MEDIUM
	 * @see #LONG
	 * @see #FULL
	 * @see #DEFAULT
	 */
	public static final DateFormat getDateInstance(int style) {
		return getDateTimeInstance(style, NONE);
	}

	/**
	 * Get a DateFormat instance that uses a given style for times. 
	 * 
	 * @param style style to use for parsing and formatting (SHORT, MEDIUM, LONG, FULL, DEFAULT);
	 * @return a DateFormat instance.
	 * @see #SHORT
	 * @see #MEDIUM
	 * @see #LONG
	 * @see #FULL
	 * @see #DEFAULT
	 */
	public static final DateFormat getTimeInstance(int style) {
		return getDateTimeInstance(NONE, style);
	}

	/**
	 * Get a DateFormat instance that uses a given style for dates and times. 
	 * 
	 * @param style style to use for parsing and formatting (SHORT, MEDIUM, LONG, FULL, DEFAULT);
	 * @return a DateFormat instance.
	 * @see #SHORT
	 * @see #MEDIUM
	 * @see #LONG
	 * @see #FULL
	 * @see #DEFAULT
	 */
	public static final DateFormat getDateTimeInstance(int dateStyle, int timeStyle) {
		return new DateFormat(dateStyle, timeStyle);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + dateStyle;
		result = prime * result + timeStyle;
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DateFormat other = (DateFormat) obj;
		if (dateStyle != other.dateStyle)
			return false;
		if (timeStyle != other.timeStyle)
			return false;
		return true;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#clone()
	 */
	public Object clone() {
		return new DateFormat(dateStyle, timeStyle);
	}
}
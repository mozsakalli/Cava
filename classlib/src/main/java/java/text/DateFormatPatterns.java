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
 * Common patterns for dates, times, and timestamps.
 * 
 * @author Eric Coolman
 *
 */
public class DateFormatPatterns {
	/**
	 * Pattern for parsing/formatting RFC-2822 timestamp.
	 */
	public static final String RFC2822 = "EEE, dd MMM yyyy HH:mm:ss Z";
	/**
	 * Pattern for parsing/formatting RFC-822 timestamp.
	 */
	public static final String RFC822 = RFC2822;
	/**
	 * Pattern for parsing/formatting ISO8601 timestamp.
	 */
	public static final String ISO8601 = "yyyy-MM-dd'T'HH:mm:ssZ";
	/**
	 * Pattern for parsing/formatting Twitter timeline timestamp.
	 */
	public static final String TWITTER_TIMELINE = "EEE MMM dd HH:mm:ss ZZZ yyyy";
	/**
	 * Pattern for parsing/formatting Twitter search timestamp.
	 */
	public static final String TWITTER_SEARCH = "EEE, dd MMM yyyy HH:mm:ss Z";
	/**
	 * Pattern for a verbose date
	 */
	public static final String VERBOSE_DATE = "EEEE, MMM dd, yyyy";
	/**
	 * Pattern for a verbose time
	 */
	public static final String VERBOSE_TIME = "HH:mm:ssaa z";
	/**
	 * Pattern for a verbose timestamp
	 */
	public static final String VERBOSE_TIMESTAMP = VERBOSE_DATE + ", " + VERBOSE_TIME;
}

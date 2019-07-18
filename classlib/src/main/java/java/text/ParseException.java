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
 * An error occurred during parsing.
 * 
 * @author Eric Coolman
 *
 */
public class ParseException extends Exception {
	private int errorOffset;
	private Throwable causedBy;
	
	/**
	 * @param errorOffset
	 */
	public ParseException(String s, int errorOffset) {
		super(s);
		this.errorOffset = errorOffset;
	}

	/**
	 * @param errorOffset
	 */
	ParseException(Throwable causedBy, String s, int errorOffset) {
		super((s == null && causedBy != null) ? causedBy.getMessage() : s);
		this.causedBy = causedBy;
		this.errorOffset = errorOffset;
	}

	/**
	 * @return the errorOffset
	 */
	public int getErrorOffset() {
		return errorOffset;
	}

	/**
	 * @return the causedBy
	 */
	Throwable getCausedBy() {
		return causedBy;
	}
}

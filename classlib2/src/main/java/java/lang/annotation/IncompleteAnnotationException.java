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

package java.lang.annotation;

/**
 * A mirror of java.lang.annotation.IncompleteAnnotationException.
 * 
 * @author Toby Reyelts
 */
public class IncompleteAnnotationException extends RuntimeException {

	private final Class<? extends Annotation> annotationType_;

	private final String elementName_;

	public IncompleteAnnotationException(final Class<? extends Annotation> annotationType, final String elementName) {
		super(elementName + " in " + annotationType);
		this.annotationType_ = annotationType;
		this.elementName_ = elementName;
	}

	public Class<? extends Annotation> annotationType() {
		return annotationType_;
	}

	public String elementName() {
		return elementName_;
	}

}

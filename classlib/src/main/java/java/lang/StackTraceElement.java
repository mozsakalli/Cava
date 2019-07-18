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
import java.io.Serializable;

@Keep
public final class StackTraceElement implements Serializable {

    private final String fileName;
    private final int lineNumber;
    private final String declaringClass;
    private final String methodName;

    StackTraceElement(String fileName, int lineNumber, String className,
            String methodName) {
        this.fileName = fileName;
        this.lineNumber = lineNumber;
        this.declaringClass = className;
        this.methodName = methodName;
    }

    public StackTraceElement(String className, String methodName, String fileName,
            int lineNumber) {
        this(fileName, lineNumber, className, methodName);
        // The public constructor doesn't allow certain values to be null.
        if (className == null || methodName == null) {
            throw new NullPointerException("invalid argument to constructor");
        }
    }

    public String getFileName() {
        return fileName;
    }

    public int getLineNumber() {
        return lineNumber;
    }

    public String getClassName() {
        return declaringClass;
    }

    public String getMethodName() {
        return methodName;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (declaringClass != null) {
            sb.append(declaringClass);
            if (methodName != null) {
                sb.append('.');
            }
        }
        if (methodName != null) {
            sb.append(methodName);
        }
        
        if(lineNumber > 0) {
            sb.append('(').append(lineNumber).append(')');
        }
        return sb.toString();
    }

    public boolean equals(Object o) {
        if (!(o instanceof StackTraceElement)) {
            return false;
        }
        StackTraceElement e = (StackTraceElement) o;
        return equals(fileName, e.fileName)
                && lineNumber == e.lineNumber
                && equals(declaringClass, e.declaringClass)
                && equals(methodName, e.methodName);
    }

    public int hashCode() {
        return hashCode(fileName) ^ lineNumber ^ hashCode(declaringClass)
                ^ hashCode(methodName);
    }

    private static boolean equals(Object o1, Object o2) {
        return o1 == null ? o2 == null : o1.equals(o2);
    }

    private static int hashCode(Object o) {
        return o == null ? 0 : o.hashCode();
    }
}

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

package compiler.backend.c;

import compiler.DecompilerUtils;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class CType {

    Set<String> dependency = new HashSet();

    public String toC(String type) {
        switch (type) {
            case "B":
                return "JBYTE";
            case "Z":
                return "JBOOL";
            case "C":
                return "JCHAR";
            case "S":
                return "JSHORT";
            case "I":
                return "JINT";
            case "F":
                return "JFLOAT";
            case "J":
                return "JLONG";
            case "D":
                return "JDOUBLE";
            case "V":
                return "void";
            default:
                dependency.add(type);
                return "JOBJECT";
        }
    }

    public String getIncludes(NameManager naming, Set<String> exclude) {
        String includes = "";
        Set<String> used = new HashSet();
        for (String d : dependency) {
            if(d.startsWith("[")) {
                d = DecompilerUtils.elementType(d);
            }
            if (exclude != null && exclude.contains(d)) {
                continue;
            }
            if(used.contains(d)) continue;
            if (DecompilerUtils.isPrimitive(d)) {
                continue;
            }
            used.add(d);
            if (!includes.isEmpty()) {
                includes += "\n";
            }
            includes += "#include \"" + naming.clazz(d) + ".h\"";
        }
        return includes;
    }

}

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
package com.cava.compiler;

import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
import java.io.ByteArrayInputStream;
import org.apache.bcel.classfile.JavaClass;

/**
 *
 * @author mustafa
 */
public class ClassParser2 {

    Clazz cls;

    public ClassParser2(Clazz cls) {
        this.cls = cls;
    }

    public void parse(ClassSource source) throws Exception {
        org.apache.bcel.classfile.ClassParser parser = new org.apache.bcel.classfile.ClassParser(new ByteArrayInputStream(source.read()), "");
        JavaClass jcls = parser.parse();
        for (org.apache.bcel.classfile.Method jm : jcls.getMethods()) {
            Method m = new Method();
            m.declaringClass = jcls.getClassName();
            m.name = jm.getName();
            m.signature = jm.getSignature();
            if (m.name.equals("test")) {
                System.out.println(m);
                MethodParser2 mp = new MethodParser2(cls, m, jm);
            }
        }
    }
}

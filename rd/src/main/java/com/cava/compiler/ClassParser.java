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
import com.cava.compiler.model.NameAndType;
import java.util.List;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.FieldVisitor;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.commons.JSRInlinerAdapter;

/**
 *
 * @author mustafa
 */
public class ClassParser extends ClassVisitor {

    Clazz cls;
    
    public ClassParser(Clazz cls) {
        super(Opcodes.ASM7);
        this.cls = cls;
    }

    public void parse(ClassSource source) throws Exception {
        ClassReader reader = new ClassReader(source.read());
        reader.accept(this, ClassReader.EXPAND_FRAMES);
    }
    
    @Override
    public void visit(int version, int access, String name, String signature, String superName, String[] interfaces) {
        cls.name = name.replace('.', '/');
        cls.superName = superName.replace('.', '/');
        for(String i : interfaces) cls.interfaces.add(i);
        super.visit(version, access, name, signature, superName, interfaces); 
    }    
    
    @Override
    public FieldVisitor visitField(int access, String name, String desc, String signature, Object value) {
        NameAndType field = new NameAndType(name, signature, false);
        field.declaringClass = cls.name;
        field.modifiers = access;
        cls.fields.add(field);
        return super.visitField(access, name, desc, signature, value);
    }    

    @Override
    public MethodVisitor visitMethod(int access, String name, String descriptor, String signature, String[] exceptions) {
        Method m = new Method();
        cls.methods.add(m);
        m.name = name;
        m.modifiers = access;
        m.declaringClass = cls.name;
        m.signature = descriptor;
        List<String> sign = DecompilerUtils.parseSignature(descriptor);
        m.type = sign.remove(sign.size() - 1);
        sign.forEach(n -> m.args.add(new NameAndType("arg", n, true)));
        System.out.println(m);
        MethodVisitor mv = super.visitMethod(access, name, descriptor, signature, exceptions);
        if(name.equals("createFramebuffer"))
            return new JSRInlinerAdapter(new MethodParser(cls, m, mv), access, name, descriptor, signature, exceptions);
        else return mv;
    }

    
}

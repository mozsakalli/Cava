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

import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.rop.cst.CstMethodRef;
import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
import com.cava.compiler.model.NameAndType;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class DexClassParser {
    
    Clazz cls;
    
    public DexClassParser(Clazz cls) {
        this.cls = cls;
    }
    
    public void parse(ClassSource source) throws Exception {
        DirectClassFile dc = new DirectClassFile(source.read(), cls.name, false);
        dc.setAttributeFactory(StdAttributeFactory.THE_ONE);
        dc.getMagic();
        
        MethodList methodList = dc.getMethods();
        for(int i=0; i<methodList.size(); i++) {
            CstMethodRef meth = new CstMethodRef(methodList.get(i).getDefiningClass(), methodList.get(i).getNat());
            Method m = new Method();
            m.declaringClass = cls.name;
            m.name = methodList.get(i).getName().toHuman();
            m.signature = meth.getNat().getDescriptor().toHuman();
            List<String> desc = DecompilerUtils.parseSignature(m.signature);
            m.type = desc.remove(desc.size() - 1);
            for(int k=0; k<desc.size(); k++) {
                m.args.add(new NameAndType("arg"+k, desc.get(k), true));
            }
            /*
            Method m = new Method();
            m.name = methodList.get(i).getName().toHuman();
            flags = methodList.get(i).getAccessFlags();
            m.isStatic = AccessFlags.isStatic(flags);
            m.isAbstract = AccessFlags.isAbstract(flags);
            m.isNative = AccessFlags.isNative(flags);
            m.isConstructor = meth.getNat().isInstanceInit();
            m.isClassInitializer = meth.getNat().isClassInit();
            m.isVirtual = !m.isStatic && (m.isAbstract || clazz.isInterface || !AccessFlags.isPrivate(flags));
            if(m.isAbstract) m.isVirtual = true;
            
            String desc = meth.getNat().getDescriptor().toHuman().substring(1);
            int p = desc.indexOf(")");
            m.type = convertType(desc.substring(p+1));
            desc = desc.substring(0,p);
            p = 0;
            while(p < desc.length()) {
                Type t = null;
                if(desc.charAt(p)=='L') {
                    int p2 = desc.indexOf(';', p);
                    t = convertType(desc.substring(p,p2+1));
                    p = p2+1;
                } else if(desc.charAt(p)=='[') {
                    int p2 = p;
                    while(desc.charAt(p2)=='[') p2++;
                    t = convertType(desc.substring(p,p2+1));
                    p = p2+1;
                } else {
                    t = convertType(desc.substring(p,p+1));
                    p++;
                }
                Variable v = new Variable();
                v.name = "param"+m.parameters.size();
                v.type = t;
                m.parameters.add(v);
            }
            m.declaringClass = clazz;
            m.customData = new Object[]{ methodList.get(i), dc};
            clazz.methods.add(m);
            */
        }
        
    }
}

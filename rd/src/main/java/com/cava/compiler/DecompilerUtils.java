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

import com.cava.compiler.code.Var;
import java.util.List;
import com.cava.compiler.model.*;
import java.util.ArrayList;

/**
 *
 * @author mustafa
 */
public class DecompilerUtils {
    
    public static String getSignature(String sign) {
        int p = 0;
        String result = "";
        while(p < sign.length()) {
            char c = sign.charAt(p++);
            result += c;
            if(c == 'L') {
                String name = "";
                while(sign.charAt(p) != ';') {
                    name += sign.charAt(p++);
                }
                result += name;
            }
        }
        
        return result;
    }
    
    static String javaSignature(String s) {
        if(isPrimitive(s)) return s;
        if(isArray(s)) return "["+javaSignature(s.substring(1));
        return "L"+s+";";
    }
    
    public static String generateMethodSignature(Method m) {
        String result = "(";
        for(Var arg : m.args)
            result += javaSignature(arg.type);
        return result + ")"+javaSignature(m.type);
    }
    
    public static List<String> parseSignature(String str) {
        List<String> result = new ArrayList();
        int p = 0;
        while(p < str.length()) {
            if(str.charAt(p) == '(' || str.charAt(p) == ')') {
                p++;
                continue;
            }
            int start = p;
            while(str.charAt(p) == '[') p++;
            if(str.charAt(p) == 'L') {
                while(str.charAt(p) != ';') p++;
                result.add(str.substring(start+1, p));
                p++;
            } else {
                result.add(str.substring(start,p+1));
                p++;
            }
        }
        return result;
    }
    
    public static String elementType(String type) {
        if(type.startsWith("[")) {
            int p = 1;
            while(type.charAt(p) == '[') p++;
            return type.substring(p);
        }
        else return type;
    }
    
    public static boolean isPrimitive(String name) {
        if(name.length() > 1) return false;
        char c = name.charAt(0);
        return (c=='V' || c=='I' || c=='J' || c=='Z' || c=='B' 
                || c=='C' || c=='D' || c=='F' || c=='S');
    }
    
    public static boolean isVoid(String name) {
        return name.length() == 1 && name.charAt(0) == 'V';
    }
    
    public static boolean isFloatingNumber(String name) {
        return name.equals("D") || name.equals("F");
    }
    
    public static boolean isArray(String name) {
        return name.startsWith("[");
    }
    
    public static boolean isPrimitiveArray(String name) {
        int p = 0;
        while(name.charAt(p) == '[') p++;
        return p == name.length() - 1;
    }
    public static String simpleName(String name) {
        String[] parts = name.split("/");
        return parts[parts.length - 1];
    }
    public static String packageName(String name) {
        int p = name.lastIndexOf("/");
        if(p == -1) return "";
        return name.substring(0, p);
    }
  
    public static boolean isStruct(String type) {
        return !isPrimitive(type) && !isArray(type) ? CompilerContext.resolve(type).isStruct() : false;
    }
    
    /*
    static Object parseAnnotationElement(AnnotationElement e) {
        if(e instanceof ConstantAnnotationElement)
            return ((ConstantAnnotationElement)e).getConstantValue();
        if(e instanceof ArrayAnnotationElement) {
            ArrayAnnotationElement ae = (ArrayAnnotationElement)e;
            Object[] result = new Object[ae.getElements().length];
            for(int i=0; i<result.length; i++)
                result[i] = parseAnnotationElement(ae.getElements()[i]);
            return result;
        }
        if(e instanceof ClassAnnotationElement) {
            ClassAnnotationElement ce = (ClassAnnotationElement)e;
            return ce.getClassType().getInternalName();
        }
        throw new RuntimeException("Unknown annotation parameter: "+e);
    }
    
    public static Map<String, Map<String,Object>> parseAnnotations(List<CustomAnnotation> list) {
        final Map<String, Map<String,Object>> result = new HashMap();
        if(list != null)
        list.forEach(a -> {
            String an = a.getAnnotationType().getFullName();
            final Map<String,Object> params = new HashMap();
            a.getParameters().forEach(ap -> {
                String name = ap.getMember();
                params.put(name, parseAnnotationElement(ap.getValue()));
            });
            result.put(an, params);
        });
        return result;
    }

    public static String objcType(CType cType,String type) {
        return objcType(cType, type, true);
    }
    
    public static String objcType(CType cType, String type, boolean pointer) {
        switch(type) {
            case "Z": return "BOOL";
            case "V": return "void";
            case "java/lang/Class": return "Class";
        }
        Clazz c = CompilerContext.resolve(type);
        if(c != null) {
            if(c.isStruct()) {
                String name = A.nativeValue(c);
                if(name == null || name.isEmpty()) throw new RuntimeException(c+" must have @Native annotation");
                return name;
            }
            String ret = c.isObjC() ? simpleName(c.name) : cType.toC(type);
            if(pointer) ret += "*";
            return ret;
        }
        throw new RuntimeException("Unknown ObjC Type : "+type);
    }

    public static String jniType(CType cType, String type) {
        switch(type) {
            case "Z": return "jboolean";
            case "V": return "void";
            case "I": return "jint";
            case "J": return "jlong";
            case "java/lang/Class": return "jclass";
        }
        return "jobject";
    }
    */
    
    public static int primitiveSize(String name) {
        switch(name) {
            case "B": case "Z": return 1;
            case "S": case "C": return 2;
            case "I": case "F": return 4;
            case "J": case "D": return 8;
            default: return 8;
        }
    }
}

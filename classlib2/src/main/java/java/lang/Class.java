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

import cava.VM;
import cava.annotation.Keep;
import java.io.IOException;
import java.lang.annotation.*;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * Instances of the class Class represent classes and interfaces in a running
 * Java application. Every array also belongs to a class that is reflected as a
 * Class object that is shared by all arrays with the same element type and
 * number of dimensions. Class has no public constructor. Instead Class objects
 * are constructed automatically by the Java Virtual Machine as classes are
 * loaded. The following example uses a Class object to print the class name of
 * an object: Since: JDK1.0, CLDC 1.0
 */
@Keep
public final class Class<T> {
    public int size;
    public String name;
    public Class superClass;
    public Class componentType;
    public int modifiers;
    public Field[] fields;
    public Class[] interfaces;
    public Method[] methods;
    
    public static java.lang.Class forName(java.lang.String className)  {
        switch(className) {
            case "[B": return byte[].class;
            case "[Z": return boolean[].class;
            case "[S": return short[].class;
            case "[C": return char[].class;
        }
        Class[] allClasses = VM.getAllClasses();
        for(int i=0; i<allClasses.length; i++)
            if(allClasses[i].getName().equals(className))
                return allClasses[i];
        /*
        VoidPtrPtr ptr = NativeCode.VoidPtrPtr("JVMCLASSPATH");
        int index = 0;
        Object value = ptr.get(index);
        while(value != null) {
            Class cls = (Class)value;
            if(cls.getName().equals(className)) return cls;
            value = ptr.get(index++);
        }
        */
        throw new ClassNotFoundException(className);
    }

    public Class<T> getSuperclass() {
        return superClass;
    }
    
    public Class getComponentType() {
        return componentType;
    }
    
    public boolean isPrimitive() {
        return this==byte.class || this==char.class || this==boolean.class || this==short.class || 
               this==int.class || this==float.class || this==long.class || this==double.class || this==void.class;
    }
    
    public int getModifiers() {
        return modifiers;
    }
    
    public Constructor getConstructor(Class[] args) {
        Method result = getMethod("<init>", args);
        if(result != null) {
            result.klass = Constructor.class; //hack for ClassCastException
        }
        return (Constructor)result;
    }

    public Constructor getDeclaredConstructor(Class[] args) {
        Method result = getDeclaredMethod("<init>", args);
        if(result != null) {
            result.klass = Constructor.class; //hack for ClassCastException
        }
        return (Constructor)result;
    }
    
    public java.lang.String getName() {
        return name;
    }

    public java.io.InputStream getResourceAsStream(java.lang.String name) throws IOException {
        //todo: move this to another class
        //File file = new File(NSBundle.getMainBundle().getBundlePath(), name.substring(1));
        //return new FileInputStream(file);
        return null;
    }
    
    public URL getResource(String name) {
        return null;
    }

    public boolean isArray() {
        return componentType != null;
    }

    /**
     * Determines if the class or interface represented by this Class object is
     * either the same as, or is a superclass or superinterface of, the class or
     * interface represented by the specified Class parameter. It returns true
     * if so; otherwise it returns false. If this Class object represents a
     * primitive type, this method returns true if the specified Class parameter
     * is exactly this Class object; otherwise it returns false. Specifically,
     * this method tests whether the type represented by the specified Class
     * parameter can be converted to the type represented by this Class object
     * via an identity conversion or via a widening reference conversion. See
     * The Java Language Specification, sections 5.1.1 and 5.1.4 , for details.
     */
    public boolean isAssignableFrom(Class cls) {
        throw new UnsupportedOperationException();
        //return NativeCode.Bool("JvmIsAssignableFrom(%s,%s)", this, cls);
    }

    public boolean isInstance(Object obj) {
        return isAssignableFrom(obj.getClass());
    }

    public boolean isInterface() {
        return false;
    }

    public java.lang.Object newInstance() {
        Constructor constructor = getConstructor(new Class[0]);
        if(constructor != null)
            return constructor.newInstance(new Object[0]);
        throw new IllegalArgumentException(name+" doesn't have default constructor");
    }
    
    public java.lang.String toString() {
        return getName() + " class";
    }

    public boolean isAnnotation() {
        return false;
    }

    /**
     * Returns this element's annotation for the specified type if such an
     * annotation is present, else null.
     *
     */
    public <T extends Annotation> T getAnnotation(Class annotationType) {
        if (annotationType == null) {
            throw new NullPointerException("Null annotationType");
        }

        return null;
    }

    /**
     * Returns all annotations present on this element.
     */
    public Annotation[] getAnnotations() {
        return null;
    }

    /**
     * Returns all annotations that are directly present on this element.
     */
    public Annotation[] getDeclaredAnnotations() {
        return null;
    }

    /**
     * Returns true if an annotation for the specified type is present on this
     * element, else false.
     */
    public boolean isAnnotationPresent(Class annotationType) {
        return false;
    }

    /**
     * Replacement for Class.asSubclass(Class).
     *
     * @param c a Class
     * @param superclass another Class which must be a superclass of <i>c</i>
     * @return <i>c</i>
     * @throws java.lang.ClassCastException if <i>c</i> is
     */
    public Class asSubclass(Class superclass) {
        return null;
    }

    /**
     * Replacement for Class.cast(Object). Throws a ClassCastException if
     * <i>obj</i>
     * is not an instance of class <var>c</var>, or a subtype of <var>c</var>.
     *
     * @param c Class we want to cast <var>obj</var> to
     * @param object object we want to cast
     * @return The object, or <code>null</code> if the object is
     * <code>null</code>.
     * @throws java.lang.ClassCastException if <var>obj</var> is not
     * <code>null</code> or an instance of <var>c</var>
     */
    public Object cast(Object object) {
        //todo
        return object;
    }

    /**
     * Replacement for Class.isEnum().
     *
     * @param class_ class we want to test.
     * @return true if the class was declared as an Enum.
     */
    public boolean isEnum() {
        return false;
    }

    /**
     * replacement for Class.isAnonymousClass()
     */
    public boolean isAnonymousClass() {
        return false;
    }

    /**
     * replacement for Class.getSimpleName()
     */
    public String getSimpleName() {
        String n = getName();
        return n.substring(n.lastIndexOf('.') + 1);
    }

    /**
     * replacement for Class.isSynthetic()
     */
    public boolean isSynthetic() {
        return false;
    }

    public String getCanonicalName() {
        return getName();
    }

    @Override
    public boolean equals(Object obj) {
        return this == obj;
    }

    public boolean desiredAssertionStatus() {
        return false;
    }        
    
    public Class[] getInterfaces() {
        return interfaces != null ? interfaces.clone() : new Class[0];
    }
    
    private Method findMethod(String name, Class[] parameters) {
        if(methods == null) return null;
        for(Method m : methods) {
            if(((parameters == null && m.parameters.length == 0) || 
               (parameters.length == m.parameters.length)) && name.equals(m.name)) {
                boolean equals = true;
                if(parameters != null) {
                    for(int i=0; i<parameters.length; i++)
                        if(parameters[i] != m.parameters[i]) {
                            //todo: boxing & assignablefrom
                            equals = false;
                            break;
                        }
                }
                if(equals) return m;
            }
        }
        return null;
    }
    
    public Method getDeclaredMethod(String name, Class[] parameters) {
        Method result = findMethod(name, parameters);
        if(result == null) throw new NoSuchMethodError();
        return result;
    }
    
    public Method[] getDeclaredMethods() {
        return methods != null ? methods.clone() : new Method[0];
    }

    public Method getMethod(String name, Class...parameters) {
        Class root = this;
        while(root != null) {
            Method result = root.findMethod(name, parameters);
            if(result != null) return result;
            root = root.superClass;
        }
        throw new NoSuchMethodError();
    }
    
    public Method[] getMethods() {
        List<Method> list = new ArrayList();
        Class root = this;
        while(root != null) {
            if(root.methods != null)
                for(int i=0; i<root.methods.length; i++)
                    list.add(root.methods[i]);
            root = root.superClass;
        }
        return list.toArray(new Method[list.size()]);
    }
    
    public Field getDeclaredField(String name) {
        Field result = null;
        if(fields != null) {
            for(Field f : fields)
                if(f.name.equals(name)) {
                    result = f;
                    break;
                }
        }
        if(result == null) throw new NoSuchFieldError(name);
        return result;
    }

    public Field[] getDeclaredFields() {
        return fields != null ? fields.clone() : new Field[0];
    }

    public Field getField(String name) {
        Class root = this;
        Field result = null;
        while(root != null && result == null) {
            if(root.fields != null) {
                for(Field field : root.fields)
                    if(field.name.equals(name)) {
                        result = field;
                        break;
                    }
            }
            if(result == null)
                root = root.superClass;
        }
        if(result == null) throw new NoSuchFieldError(name);
        return result;
    }
    
    public Field[] getFields() {
        List<Field> list = new ArrayList();
        Class root = this;
        while(root != null) {
            if(root.fields != null)
                for(int i=0; i<root.fields.length; i++)
                    list.add(root.fields[i]);
            root = root.superClass;
        }
        return list.toArray(new Field[list.size()]);
    }
    
    public static String getPrimitiveNativeName(Class componentType) {
        String name;
        if(componentType == byte.class) name = "B";
        else if(componentType == boolean.class) name = "Z";
        else if(componentType == char.class) name = "C";
        else if(componentType == short.class) name = "S";
        else if(componentType == int.class) name = "I";
        else if(componentType == float.class) name = "F";
        else if(componentType == long.class) name = "J";
        else if(componentType == double.class) name = "D";
        else throw new RuntimeException(componentType.getName()+" is not primitive class");
        return name;
    }
    
    public static Class getArrayClassFor(Class componentType) {
        String name = "[" + (componentType.isPrimitive() ? getPrimitiveNativeName(componentType) : componentType.getName());
        return forName(name);
    }
}

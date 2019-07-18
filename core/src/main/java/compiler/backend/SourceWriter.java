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

package compiler.backend;

/**
 *
 * @author Mustafa Özsakallı @digitoygames
 */
public class SourceWriter {

    StringBuilder buffer = new StringBuilder();
    int tabs;
    boolean needsTabs;
    public boolean importNatives;
    
    public int column;
    public int row;
    
    //public HashSet<Klass> imports = new HashSet();
    //public HashSet<Klass> forwards = new HashSet();
    //public HashSet<String> extraImports = new HashSet();
    
    public void mergeTo(SourceWriter to) {
        //to.imports.addAll(imports);
        //to.forwards.addAll(forwards);
        //to.extraImports.addAll(extraImports);
    }
    
    /*
    public void imp(Klass klass){
        if(klass.bridgedBy != null)
            klass = klass.bridgedBy;
        
        if(importNatives || !klass.isNative || klass.requiredImports != null)
            imports.add(klass);
        extraImports.addAll(klass.extraImports);
    }
    
    public void imp(Type type){
        while(type!=null && type.isArray()) type = type.elementType;
        if(type!=null && type.klass != null)
            imp(type.klass);
    }
    
    public void fwd(Klass klass){
        if(klass == null)
            return;
        if(klass.bridgedBy != null)
            klass = klass.bridgedBy;
        
        if(klass.requiredImports != null)
            imp(klass);
        else if(!klass.isNative)
            forwards.add(klass);
    }
    
    public void fwd(Type type){
        if(type == null)
            return;
        while(type.isArray()) {
            type = type.elementType;
        }
        if(type!=null && type.klass != null)
            fwd(type.klass);
    }*/
    
    void checkTabs() {
        if(needsTabs) {
            for(int i=0; i<tabs; i++) {
                buffer.append("\t");
                column++;
            }
            needsTabs = false;
        }
    }
    
    public SourceWriter print(Object code) {
        checkTabs();
        String str = String.valueOf(code);
        column += str.length();
        buffer.append(str);
        return this;
    }

    public SourceWriter print(String format, Object...args) {
        checkTabs();
        String str = String.format(format, args);
        column += str.length();
        buffer.append(str);
        return this;
    }
    
    public SourceWriter println(Object code) {
        checkTabs();
        buffer.append(code);
        return ln();
    }

    public SourceWriter println(String format, Object...args) {
        checkTabs();
        buffer.append(String.format(format, args));
        return ln();
    }
    
    public SourceWriter ln() {
        buffer.append("\r\n");
        needsTabs = true;
        row++;
        column = 0;
        return this;
    }
    
    
    public SourceWriter indent() {
        tabs++;
        return this;
    }
    
    public SourceWriter undent() {
        tabs--;
        if(tabs < 0) tabs = 0;
        return this;
    }

    @Override
    public String toString() {
        return buffer.toString();
    }
    
    public SourceWriter clear() {
        buffer.setLength(0);
        needsTabs = false;
        column = row = tabs = 0;
        return this;
    }
}

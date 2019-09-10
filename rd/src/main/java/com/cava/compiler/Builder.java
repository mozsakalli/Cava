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
import com.strobel.decompiler.Decompiler;
import com.strobel.decompiler.DecompilerSettings;
import com.strobel.decompiler.PlainTextOutput;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class Builder {
    
    ClassFileFinder classFinder;
    Map<String, Clazz> classes = new HashMap();
    BuilderOptions options;
    
    public Builder(BuilderOptions options) {
        this.options = options;
        classFinder = new ClassFileFinder(options.classPath());
    }
    
    public Clazz resolve(String name) {
        Clazz cls = classes.get(name);
        if(cls != null) return cls;
        try {
            ClassSource src = classFinder.findClass(name);
            PlainTextOutput po = new PlainTextOutput();
            DecompilerSettings settings = getDecompilerSettings();
            Decompiler.decompile(name.replace('.', '/'), po, settings);
            System.out.println(po.toString());
            /*
            cls = new Clazz();
            classes.put(name, cls);
            ClassParser2 parser = new ClassParser2(cls);
            parser.parse(src);*/
            
        } catch(Exception e){
            throw new RuntimeException(e);
        }
        return cls;
    }
    
    DecompilerSettings getDecompilerSettings() {
        DecompilerSettings decompilerSettings = new DecompilerSettings();
        decompilerSettings.setDisableForEachTransforms(true);
        decompilerSettings.setMergeVariables(true);
        decompilerSettings.setSimplifyMemberReferences(false);
        decompilerSettings.setAlwaysGenerateExceptionVariableForCatchBlocks(true);
        decompilerSettings.setExcludeNestedTypes(true);
        
        decompilerSettings.setLanguage(new ASTLanguage());
        decompilerSettings.setTypeLoader(new ClasspathTypeLoader(classFinder));
        
        return decompilerSettings;
    }
    
}

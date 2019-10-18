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

package digiplay.compiler;
/*
import compiler.project.AndroidProject;
import compiler.project.Project;
import compiler.project.XCodeProject;
*/
/**
 *
 * @author mustafa
 */
public enum Platform {
    
    iOS,
    OsX,
    Android,
    Linux,
    Windows;
    
    public String codeExtension() {
        return this == iOS || this == OsX ? ".m" : ".c";
    }
    
    public boolean isObjC() {
        return this == iOS || this == OsX;
    }
    /*
    public Project createProject() {
        switch(this) {
            case iOS:
            case OsX:
                return new XCodeProject();
                
            case Android:
                return new AndroidProject();
                
            default:
                throw new RuntimeException("Project implementation can't find for "+this+" platform");
        }
    }*/
}

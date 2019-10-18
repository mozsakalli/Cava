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

package digiplay.compiler.model.op;

import java.io.Serializable;

/**
 *
 * @author mustafa
 */
public class Op implements Serializable {
    
    public String name;
    public Object value;
    public int vx=-1,vy=-1,vz=-1;
    public int target=-1;

    public Op(){}
    public Op(String name, Object value) {
        this.name = name;
        this.value = value;
    }

    @Override
    public String toString() {
        String str = name;
        if(vx != -1) str += " vx:"+vx;
        if(vy != -1) str += " vy:"+vy;
        if(vz != -1) str += " vz:"+vz;
        if(value != null) str += " value:"+value;
        if(target != -1) str += " target:"+target;
        return str;
    }
}

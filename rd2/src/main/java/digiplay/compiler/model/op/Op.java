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

import com.android.dx.rop.code.RegisterSpecSet;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class Op implements Serializable {

    public static class ExceptionHandler implements Serializable{
        public String className;
        public int target;
        public ExceptionHandler(String className, int target) {
            this.className = className;
            this.target = target;
        }
    }

    public static class SwitchCase implements Serializable {
        public int value;
        public int target;
        public SwitchCase(int value, int target) {
            this.value = value;
            this.target = target;
        }
    }
    public String name;
    public Object value;
    public int vx=-1,vy=-1,vz=-1;
    public int target=-1;
    public List<Object> arrayData;
    public List<SwitchCase> cases;
    public String memberName;
    public List<ExceptionHandler> exceptionHandlers;
    public RegisterSpecSet debugInfo;

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
        if(arrayData != null) {
            str += " array:[";
            for(int i=0; i<arrayData.size(); i++) {
                if(i>0) str += ",";
                str += arrayData.get(i);
            }
            str += "]";
        }
        if(cases != null) {
            str += " switch:[";
            for(int i=0; i<cases.size(); i++) {
                if(i > 0) str += ",";
                SwitchCase cas = cases.get(i);
                str += cas.value+"/"+cas.target;
            }
            str += "]";
        }
        return str;
    }
}

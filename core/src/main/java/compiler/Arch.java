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

package compiler;

/**
 *
 * @author mustafa
 */
public enum Arch {
    
    Arm64(0,"arm64"),
    ArmV7(1,"armv7"),
    X86_64(2,"x86_64"),
    X86(3,"i386");
    
    private final int value;
    private final String name;
    
    private Arch(int value, String name) {
        this.value = value;
        this.name = name;
    }

    public int getValue() {
        return value;
    }   
    
    public String getName() {
        return name;
    }
    
    public final static Arch valueOf(int value) {
        switch(value) {
            case 0: return Arm64;
            case 1: return ArmV7;
            case 2: return X86_64;
            case 3: return X86;
        }
        throw new RuntimeException("Invalid architecture id: "+value);
    }
}

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
package com.cava.compiler.relooper;

/**
 *
 * @author mustafa
 */
public class Shape {

    int id;
    Shape next;
    Shape natural;

    public enum ShapeType {
        Simple,
        Multiple,
        Loop,
        Emulated
    };
    ShapeType type;
    
    void render(boolean inLoop) {}
    
    public static MultipleShape isMultiple(Shape shape) {
        return shape instanceof MultipleShape ? (MultipleShape)shape : null;
    }
}

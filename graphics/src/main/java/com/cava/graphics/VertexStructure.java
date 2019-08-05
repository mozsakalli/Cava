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

package com.cava.graphics;

/**
 *
 * @author mustafa
 */
public class VertexStructure {

    public static enum Type {
        FLOAT1(1), FLOAT2(2), FLOAT3(3), FLOAT4(4), RGBA(5);
        int size;
        Type(int size) {
            this.size = size;
        }
        public int getSize() {
            return size;
        }
    }
    
    public static class Element {
        public String name;
        public Type type;
        public int offset;
        public int intDeviceLocation;
        
        public Element(){}
        public Element(String name, Type type){
            this.name = name;
            this.type = type;
        }
    }

    Element[] elements;
    int stride;
    
    public VertexStructure(){}
    public VertexStructure(Element...elements) {
        setElements(elements);
    }
    
    public void setElements(Element...elements) {
        this.elements = elements;
        int offset = 0;
        for(Element e : elements) {
            e.offset = offset;
            offset += e.type.size;
        }
        stride = offset;
    }
    
    public Element[] getElements() {
        return elements;
    }
}

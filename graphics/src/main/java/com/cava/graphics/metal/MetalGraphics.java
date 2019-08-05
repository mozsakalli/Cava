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

package com.cava.graphics.metal;

import com.cava.graphics.BlendFunc;
import com.cava.graphics.BufferUsage;
import com.cava.graphics.Graphics;
import com.cava.graphics.IndexBuffer;
import com.cava.graphics.ShaderProgram;
import com.cava.graphics.VertexBuffer;
import com.cava.graphics.VertexStructure;

/**
 *
 * @author mustafa
 */
public class MetalGraphics extends Graphics {

    @Override
    public ShaderProgram createShaderProgram(Object code) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public VertexBuffer createVertexBuffer(int capacity, VertexStructure structure, BufferUsage usage) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public IndexBuffer createIndexBuffer(int capacity, BufferUsage usage) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void compile(ShaderProgram program, VertexStructure structure) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setBlending(BlendFunc src, BlendFunc dst) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void draw(VertexBuffer vertexBuffer, IndexBuffer indexBuffer) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

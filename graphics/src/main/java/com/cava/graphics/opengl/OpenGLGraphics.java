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

package com.cava.graphics.opengl;

import com.cava.graphics.BlendFunc;
import com.cava.graphics.BufferUsage;
import com.cava.graphics.Graphics;
import com.cava.graphics.IndexBuffer;
import com.cava.graphics.ShaderProgram;
import com.cava.graphics.VertexBuffer;
import com.cava.graphics.VertexStructure;
import com.cava.graphics.VertexStructure.Element;

/**
 *
 * @author mustafa
 */
public class OpenGLGraphics extends Graphics {

    @Override
    public ShaderProgram createShaderProgram(Object code) {
        String[] strCode = (String[])code;
        return new OpenGLShaderProgram(strCode[0], strCode[1]);
    }

    @Override
    public VertexBuffer createVertexBuffer(int capacity,VertexStructure structure, BufferUsage usage) {
        return new OpenGLVertexBuffer(capacity, structure, usage);
    }

    @Override
    public IndexBuffer createIndexBuffer(int capacity, BufferUsage usage) {
        return new OpenGLIndexBuffer(capacity, usage);
    }

    @Override
    public void draw(VertexBuffer vertexBuffer, IndexBuffer indexBuffer) {
    }

    boolean blendingEnabled;
    int blendSrc, blendDst;
    
    @Override
    public void setBlending(BlendFunc source, BlendFunc dest) {
        if(source == BlendFunc.ZERO && dest == BlendFunc.ZERO) {
            if(blendingEnabled) {
                GL.glDisable(GL.GL_BLEND);
                blendingEnabled = false;
            }
        } else {
            if(!blendingEnabled) {
                GL.glEnable(GL.GL_BLEND);
                blendingEnabled = true;
            }
            int src = source.gl();
            int dst = dest.gl();
            if(src != blendSrc || dst != blendDst) {
                GL.glBlendFunc(blendSrc = src, blendDst = dst);
            }
        }
    }

    @Override
    public void compile(ShaderProgram program, VertexStructure structure) {
        OpenGLShaderProgram prog = (OpenGLShaderProgram)program;
        Element[] elements = structure.getElements();
        for(Element e : elements) {
            e.intDeviceLocation = GL.glGetAttribLocation(prog.programHandle, e.name);
        }
    }


}

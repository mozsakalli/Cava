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

import com.cava.graphics.Graphics;
import com.cava.graphics.IndexBuffer;
import com.cava.graphics.ShaderProgram;
import com.cava.graphics.VertexBuffer;

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
    public VertexBuffer createVertexBuffer(int capacity) {
        return new OpenGLVertexBuffer(capacity);
    }

    @Override
    public IndexBuffer createIndexBuffer(int capacity) {
        return new OpenGLIndexBuffer(capacity);
    }

}

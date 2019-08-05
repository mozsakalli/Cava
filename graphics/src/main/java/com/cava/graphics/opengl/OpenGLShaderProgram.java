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

import com.cava.graphics.ShaderProgram;

/**
 *
 * @author mustafa
 */
public class OpenGLShaderProgram extends ShaderProgram {
    
    int vertexHandle=-1, fragmentHandle=-1, programHandle=-1;

    public OpenGLShaderProgram(String vertexCode, String fragmentCode) {
        vertexHandle = compileShader(GL.GL_VERTEX_SHADER, vertexCode);
        fragmentHandle = compileShader(GL.GL_FRAGMENT_SHADER, 
              "#ifdef GL_ES\n"
            + "precision mediump float;\n"
            + "#endif\n"+
                fragmentCode);
        programHandle = GL.glCreateProgram();
        GL.glAttachShader(programHandle, vertexHandle);
        GL.glAttachShader(programHandle, fragmentHandle);

        GL.glLinkProgram(programHandle);
        
        int[] status = new int[1];
        GL.glGetProgramiv(programHandle, GL.GL_LINK_STATUS, status);
        if (status[0] == GL.GL_FALSE) {
            throw new RuntimeException("Cant compile shaderprogram");
        }
        
    }
    
    public static int compileShader(int type, String source) {
        int shader = GL.glCreateShader(type);
        if (shader == 0) {
            throw new RuntimeException(
                    "could not create shader object; check ShaderProgram.isSupported()");
        }
        GL.glShaderSource(shader, source);
        GL.glCompileShader(shader);

        int[] status = new int[1];
        GL.glGetShaderiv(shader, GL.GL_COMPILE_STATUS, status);
        if (status[0] == GL.GL_FALSE) {
            GL.glDeleteShader(shader);
            throw new RuntimeException("Can't compile shader: "+source);
        }
        return shader;
    }
    
}

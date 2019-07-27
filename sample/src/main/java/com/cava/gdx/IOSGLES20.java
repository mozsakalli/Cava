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
package com.cava.gdx;

import cava.annotation.Framework;
import cava.annotation.Include;
import cava.annotation.Keep;
import cava.c.CLib;
import cava.c.CharPtr;
import cava.platform.NativeCode;
import com.badlogic.gdx.graphics.GL20;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/**
 *
 * @author mustafa
 */
@Include("<OpenGLES/ES2/gl.h> <OpenGLES/ES2/glext.h>")
@Framework("OpenGLES.framework")
@Keep
public class IOSGLES20 implements GL20 {

    public static int x,y,width,height;
    
    @Override
    public void glActiveTexture(int texture) {
        NativeCode.Void("glActiveTexture(%s)", texture);
    }

    @Override
    public void glAttachShader(int program, int shader) {
        NativeCode.Void("glAttachShader(%s, %s)", program, shader);
    }

    @Override
    public void glBindAttribLocation(int program, int index, String name) {
        NativeCode.Void("char chars[513];");
        NativeCode.Void("glBindAttribLocation(%s, %s, %s)", program, index, CharPtr.asciiZ(name, NativeCode.VoidPtr("&chars"),512));
    }

    @Override
    public void glBindBuffer(int target, int buffer) {
        NativeCode.Void("glBindBuffer(%s, %s)", target, buffer);
    }

    @Override
    public void glBindFramebuffer(int target, int framebuffer) {
        NativeCode.Void("glBindFramebuffer(%s, %s)", target, framebuffer);
    }

    @Override
    public void glBindRenderbuffer(int target, int renderbuffer) {
        NativeCode.Void("glBindRenderbuffer(%s, %s)", target, renderbuffer);
    }

    @Override
    public void glBindTexture(int target, int texture) {
        NativeCode.Void("glBindTexture(%s, %s)", target, texture);
    }

    @Override
    public void glBlendColor(float red, float green, float blue, float alpha) {
        NativeCode.Void("glBlendColor(%s, %s, %s, %s)", red, green, blue, alpha);
    }

    @Override
    public void glBlendEquation(int mode) {
        NativeCode.Void("glBlendEquation(%s)", mode);
    }

    @Override
    public void glBlendEquationSeparate(int modeRGB, int modeAlpha) {
        NativeCode.Void("glBlendEquationSeparate(%s, %s)", modeRGB, modeAlpha);
    }

    @Override
    public void glBlendFunc(int sfactor, int dfactor) {
        NativeCode.Void("glBlendFunc(%s, %s)", sfactor, dfactor);
    }

    @Override
    public void glBlendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        NativeCode.Void("glBlendFuncSeparate(%s, %s, %s, %s)", srcRGB, dstRGB, srcAlpha, dstAlpha);
    }

    @Override
    public void glBufferData(int target, int size, Buffer data, int usage) {
    }

    @Override
    public void glBufferSubData(int target, int offset, int size, Buffer data) {
    }

    @Override
    public int glCheckFramebufferStatus(int target) {
        return 0;
    }

    @Override
    public void glClear(int mask) {
    }

    @Override
    public void glClearColor(float red, float green, float blue, float alpha) {
    }

    @Override
    public void glClearDepthf(float depth) {
    }

    @Override
    public void glClearStencil(int s) {
    }

    @Override
    public void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
    }

    @Override
    public void glCompileShader(int shader) {
    }

    @Override
    public void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize, Buffer data) {
    }

    @Override
    public void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Buffer data) {
    }

    @Override
    public void glCopyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border) {
    }

    @Override
    public void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
    }

    @Override
    public int glCreateProgram() {
        return 0;
    }

    @Override
    public int glCreateShader(int type) {
        return 0;
    }

    @Override
    public void glCullFace(int mode) {
    }

    @Override
    public void glDeleteBuffers(int n, IntBuffer buffers) {
    }

    @Override
    public void glDeleteBuffer(int buffer) {
    }

    @Override
    public void glDeleteFramebuffers(int n, IntBuffer framebuffers) {
    }

    @Override
    public void glDeleteFramebuffer(int framebuffer) {
    }

    @Override
    public void glDeleteProgram(int program) {
    }

    @Override
    public void glDeleteRenderbuffers(int n, IntBuffer renderbuffers) {
    }

    @Override
    public void glDeleteRenderbuffer(int renderbuffer) {
    }

    @Override
    public void glDeleteShader(int shader) {
    }

    @Override
    public void glDeleteTextures(int n, IntBuffer textures) {
    }

    @Override
    public void glDeleteTexture(int texture) {
    }

    @Override
    public void glDepthFunc(int func) {
    }

    @Override
    public void glDepthMask(boolean flag) {
    }

    @Override
    public void glDepthRangef(float zNear, float zFar) {
    }

    @Override
    public void glDetachShader(int program, int shader) {
    }

    @Override
    public void glDisable(int cap) {
    }

    @Override
    public void glDisableVertexAttribArray(int index) {
    }

    @Override
    public void glDrawArrays(int mode, int first, int count) {
    }

    @Override
    public void glDrawElements(int mode, int count, int type, Buffer indices) {
    }

    @Override
    public void glDrawElements(int mode, int count, int type, int indices) {
    }

    @Override
    public void glEnable(int cap) {
    }

    @Override
    public void glEnableVertexAttribArray(int index) {
    }

    @Override
    public void glFinish() {
    }

    @Override
    public void glFlush() {
    }

    @Override
    public void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
    }

    @Override
    public void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
    }

    @Override
    public void glFrontFace(int mode) {
    }

    @Override
    public void glGenBuffers(int n, IntBuffer buffers) {
    }

    @Override
    public int glGenBuffer() {
        return 0;
    }

    @Override
    public void glGenerateMipmap(int target) {
    }

    @Override
    public void glGenFramebuffers(int n, IntBuffer framebuffers) {
    }

    @Override
    public int glGenFramebuffer() {
        return 0;
    }

    @Override
    public void glGenRenderbuffers(int n, IntBuffer renderbuffers) {
    }

    @Override
    public int glGenRenderbuffer() {
        return 0;
    }

    @Override
    public void glGenTextures(int n, IntBuffer textures) {
    }

    @Override
    public int glGenTexture() {
        return 0;
    }

    @Override
    public String glGetActiveAttrib(int program, int index, IntBuffer size, Buffer type) {
        return null;
    }

    @Override
    public String glGetActiveUniform(int program, int index, IntBuffer size, Buffer type) {
        return null;
    }

    @Override
    public void glGetAttachedShaders(int program, int maxcount, Buffer count, IntBuffer shaders) {
    }

    @Override
    public int glGetAttribLocation(int program, String name) {
        return 0;
    }

    @Override
    public void glGetBooleanv(int pname, Buffer params) {
    }

    @Override
    public void glGetBufferParameteriv(int target, int pname, IntBuffer params) {
    }

    @Override
    public int glGetError() {
        return 0;
    }

    @Override
    public void glGetFloatv(int pname, FloatBuffer params) {
    }

    @Override
    public void glGetFramebufferAttachmentParameteriv(int target, int attachment, int pname, IntBuffer params) {
    }

    @Override
    public void glGetIntegerv(int pname, IntBuffer params) {
    }

    @Override
    public void glGetProgramiv(int program, int pname, IntBuffer params) {
    }

    @Override
    public String glGetProgramInfoLog(int program) {
        return null;
    }

    @Override
    public void glGetRenderbufferParameteriv(int target, int pname, IntBuffer params) {
    }

    @Override
    public void glGetShaderiv(int shader, int pname, IntBuffer params) {
    }

    @Override
    public String glGetShaderInfoLog(int shader) {
        return null;
    }

    @Override
    public void glGetShaderPrecisionFormat(int shadertype, int precisiontype, IntBuffer range, IntBuffer precision) {
    }

    @Override
    public String glGetString(int name) {
        CharPtr ascii = NativeCode.CharPtr("glGetString(%s)", name);
        return ascii == null ? "" : ascii.toJavaString();
    }

    @Override
    public void glGetTexParameterfv(int target, int pname, FloatBuffer params) {
    }

    @Override
    public void glGetTexParameteriv(int target, int pname, IntBuffer params) {
    }

    @Override
    public void glGetUniformfv(int program, int location, FloatBuffer params) {
    }

    @Override
    public void glGetUniformiv(int program, int location, IntBuffer params) {
    }

    @Override
    public int glGetUniformLocation(int program, String name) {
        return 0;
    }

    @Override
    public void glGetVertexAttribfv(int index, int pname, FloatBuffer params) {
    }

    @Override
    public void glGetVertexAttribiv(int index, int pname, IntBuffer params) {
    }

    @Override
    public void glGetVertexAttribPointerv(int index, int pname, Buffer pointer) {
    }

    @Override
    public void glHint(int target, int mode) {
    }

    @Override
    public boolean glIsBuffer(int buffer) {
        return false;
    }

    @Override
    public boolean glIsEnabled(int cap) {
        return false;
    }

    @Override
    public boolean glIsFramebuffer(int framebuffer) {
        return false;
    }

    @Override
    public boolean glIsProgram(int program) {
        return false;
    }

    @Override
    public boolean glIsRenderbuffer(int renderbuffer) {
        return false;
    }

    @Override
    public boolean glIsShader(int shader) {
        return false;
    }

    @Override
    public boolean glIsTexture(int texture) {
        return false;
    }

    @Override
    public void glLineWidth(float width) {
    }

    @Override
    public void glLinkProgram(int program) {
    }

    @Override
    public void glPixelStorei(int pname, int param) {
    }

    @Override
    public void glPolygonOffset(float factor, float units) {
    }

    @Override
    public void glReadPixels(int x, int y, int width, int height, int format, int type, Buffer pixels) {
    }

    @Override
    public void glReleaseShaderCompiler() {
    }

    @Override
    public void glRenderbufferStorage(int target, int internalformat, int width, int height) {
    }

    @Override
    public void glSampleCoverage(float value, boolean invert) {
    }

    @Override
    public void glScissor(int x, int y, int width, int height) {
    }

    @Override
    public void glShaderBinary(int n, IntBuffer shaders, int binaryformat, Buffer binary, int length) {
    }

    @Override
    public void glShaderSource(int shader, String string) {
    }

    @Override
    public void glStencilFunc(int func, int ref, int mask) {
    }

    @Override
    public void glStencilFuncSeparate(int face, int func, int ref, int mask) {
    }

    @Override
    public void glStencilMask(int mask) {
    }

    @Override
    public void glStencilMaskSeparate(int face, int mask) {
    }

    @Override
    public void glStencilOp(int fail, int zfail, int zpass) {
    }

    @Override
    public void glStencilOpSeparate(int face, int fail, int zfail, int zpass) {
    }

    @Override
    public void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, Buffer pixels) {
    }

    @Override
    public void glTexParameterf(int target, int pname, float param) {
    }

    @Override
    public void glTexParameterfv(int target, int pname, FloatBuffer params) {
    }

    @Override
    public void glTexParameteri(int target, int pname, int param) {
    }

    @Override
    public void glTexParameteriv(int target, int pname, IntBuffer params) {
    }

    @Override
    public void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Buffer pixels) {
    }

    @Override
    public void glUniform1f(int location, float x) {
    }

    @Override
    public void glUniform1fv(int location, int count, FloatBuffer v) {
    }

    @Override
    public void glUniform1fv(int location, int count, float[] v, int offset) {
    }

    @Override
    public void glUniform1i(int location, int x) {
    }

    @Override
    public void glUniform1iv(int location, int count, IntBuffer v) {
    }

    @Override
    public void glUniform1iv(int location, int count, int[] v, int offset) {
    }

    @Override
    public void glUniform2f(int location, float x, float y) {
    }

    @Override
    public void glUniform2fv(int location, int count, FloatBuffer v) {
    }

    @Override
    public void glUniform2fv(int location, int count, float[] v, int offset) {
    }

    @Override
    public void glUniform2i(int location, int x, int y) {
    }

    @Override
    public void glUniform2iv(int location, int count, IntBuffer v) {
    }

    @Override
    public void glUniform2iv(int location, int count, int[] v, int offset) {
    }

    @Override
    public void glUniform3f(int location, float x, float y, float z) {
    }

    @Override
    public void glUniform3fv(int location, int count, FloatBuffer v) {
    }

    @Override
    public void glUniform3fv(int location, int count, float[] v, int offset) {
    }

    @Override
    public void glUniform3i(int location, int x, int y, int z) {
    }

    @Override
    public void glUniform3iv(int location, int count, IntBuffer v) {
    }

    @Override
    public void glUniform3iv(int location, int count, int[] v, int offset) {
    }

    @Override
    public void glUniform4f(int location, float x, float y, float z, float w) {
    }

    @Override
    public void glUniform4fv(int location, int count, FloatBuffer v) {
    }

    @Override
    public void glUniform4fv(int location, int count, float[] v, int offset) {
    }

    @Override
    public void glUniform4i(int location, int x, int y, int z, int w) {
    }

    @Override
    public void glUniform4iv(int location, int count, IntBuffer v) {
    }

    @Override
    public void glUniform4iv(int location, int count, int[] v, int offset) {
    }

    @Override
    public void glUniformMatrix2fv(int location, int count, boolean transpose, FloatBuffer value) {
    }

    @Override
    public void glUniformMatrix2fv(int location, int count, boolean transpose, float[] value, int offset) {
    }

    @Override
    public void glUniformMatrix3fv(int location, int count, boolean transpose, FloatBuffer value) {
    }

    @Override
    public void glUniformMatrix3fv(int location, int count, boolean transpose, float[] value, int offset) {
    }

    @Override
    public void glUniformMatrix4fv(int location, int count, boolean transpose, FloatBuffer value) {
    }

    @Override
    public void glUniformMatrix4fv(int location, int count, boolean transpose, float[] value, int offset) {
    }

    @Override
    public void glUseProgram(int program) {
    }

    @Override
    public void glValidateProgram(int program) {
    }

    @Override
    public void glVertexAttrib1f(int indx, float x) {
    }

    @Override
    public void glVertexAttrib1fv(int indx, FloatBuffer values) {
    }

    @Override
    public void glVertexAttrib2f(int indx, float x, float y) {
    }

    @Override
    public void glVertexAttrib2fv(int indx, FloatBuffer values) {
    }

    @Override
    public void glVertexAttrib3f(int indx, float x, float y, float z) {
    }

    @Override
    public void glVertexAttrib3fv(int indx, FloatBuffer values) {
    }

    @Override
    public void glVertexAttrib4f(int indx, float x, float y, float z, float w) {
    }

    @Override
    public void glVertexAttrib4fv(int indx, FloatBuffer values) {
    }

    @Override
    public void glVertexAttribPointer(int indx, int size, int type, boolean normalized, int stride, Buffer ptr) {
    }

    @Override
    public void glVertexAttribPointer(int indx, int size, int type, boolean normalized, int stride, int ptr) {
    }

    public void glViewport(int x, int y, int width, int height) {
    }

}

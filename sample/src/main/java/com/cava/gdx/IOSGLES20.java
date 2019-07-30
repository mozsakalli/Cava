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
import cava.c.VoidPtr;
import cava.platform.NativeCode;
import com.badlogic.gdx.graphics.GL20;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/**
 *
 * @author mustafa
 */
@Include("<OpenGLES/ES2/gl.h> <OpenGLES/ES2/glext.h>")
@Framework("OpenGLES.framework")
@Keep
public class IOSGLES20 implements GL20 {

    public static int x,y,width,height;
    
    static VoidPtr getBufferAddress(Buffer buffer) {
        VoidPtr ptr = VoidPtr.fromBuffer(buffer);
        Class cls = buffer.getClass();
        if(cls == ByteBuffer.class)
            return NativeCode.VoidPtr("((char*)%s) + (%s)", ptr, buffer.position());
        if(cls == ShortBuffer.class)
            return NativeCode.VoidPtr("((char*)%s) + (%s * sizeof(jshort))", ptr, buffer.position());
        if(cls == FloatBuffer.class)
            return NativeCode.VoidPtr("((char*)%s) + (%s * sizeof(jfloat))", ptr, buffer.position());
        if(cls == IntBuffer.class)
            return NativeCode.VoidPtr("((char*)%s) + (%s * sizeof(jint))", ptr, buffer.position());
        
        throw new RuntimeException("Unknown buffer class: "+cls);
    }
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
        VoidPtr ptr = getBufferAddress(data);
        NativeCode.Void("glBufferData(%s,%s,%s,%s)", target, size, ptr, usage);
    }

    @Override
    public void glBufferSubData(int target, int offset, int size, Buffer data) { System.out.println("BufferSubData(int target, int offset, int size, Buffer data not implemented"); }

    @Override
    public int glCheckFramebufferStatus(int target) {
        System.out.println("glCheckFramebufferStatus not implemented");
        return 0;
    }

    @Override
    public void glClear(int mask) {
        NativeCode.Void("glClear(%s)", mask);
    }

    @Override
    public void glClearColor(float red, float green, float blue, float alpha) {
        NativeCode.Void("glClearColor(%s,%s,%s,%s)", red, green, blue, alpha);
    }

    @Override
    public void glClearDepthf(float depth) {
        NativeCode.Void("glClearDepthf(%s)", depth);
    }

    @Override
    public void glClearStencil(int s) {
        NativeCode.Void("glClearStencil(%s)", s);
    }

    @Override
    public void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        NativeCode.Void("glColorMask(%s,%s,%s,%s)", red, green, blue, alpha);
    }

    @Override
    public void glCompileShader(int shader) {
        NativeCode.Void("glCompileShader(%s)", shader);
    }

    @Override
    public void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize, Buffer data) { System.out.println("CompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize, Buffer data not implemented"); }

    @Override
    public void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Buffer data) { System.out.println("CompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Buffer data not implemented"); }

    @Override
    public void glCopyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border) { System.out.println("CopyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border not implemented"); }

    @Override
    public void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) { System.out.println("CopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height not implemented"); }

    @Override
    public int glCreateProgram() {
        return NativeCode.Int("glCreateProgram()");
    }

    @Override
    public int glCreateShader(int type) {
        return NativeCode.Int("glCreateShader(%s)", type);
    }

    @Override
    public void glCullFace(int mode) { System.out.println("CullFace(int mode not implemented"); }

    @Override
    public void glDeleteBuffers(int n, IntBuffer buffers) { System.out.println("DeleteBuffers(int n, IntBuffer buffers not implemented"); }

    @Override
    public void glDeleteBuffer(int buffer) { System.out.println("DeleteBuffer(int buffer not implemented"); }

    @Override
    public void glDeleteFramebuffers(int n, IntBuffer framebuffers) { System.out.println("DeleteFramebuffers(int n, IntBuffer framebuffers not implemented"); }

    @Override
    public void glDeleteFramebuffer(int framebuffer) { System.out.println("DeleteFramebuffer(int framebuffer not implemented"); }

    @Override
    public void glDeleteProgram(int program) { System.out.println("DeleteProgram(int program not implemented"); }

    @Override
    public void glDeleteRenderbuffers(int n, IntBuffer renderbuffers) { System.out.println("DeleteRenderbuffers(int n, IntBuffer renderbuffers not implemented"); }

    @Override
    public void glDeleteRenderbuffer(int renderbuffer) { System.out.println("DeleteRenderbuffer(int renderbuffer not implemented"); }

    @Override
    public void glDeleteShader(int shader) { System.out.println("DeleteShader(int shader not implemented"); }

    @Override
    public void glDeleteTextures(int n, IntBuffer textures) { System.out.println("DeleteTextures(int n, IntBuffer textures not implemented"); }

    @Override
    public void glDeleteTexture(int texture) { System.out.println("DeleteTexture(int texture not implemented"); }

    @Override
    public void glDepthFunc(int func) { System.out.println("DepthFunc(int func not implemented"); }

    @Override
    public void glDepthMask(boolean flag) { 
        NativeCode.Void("glDepthMask(%s)", flag);
    }

    @Override
    public void glDepthRangef(float zNear, float zFar) { System.out.println("DepthRangef(float zNear, float zFar not implemented"); }

    @Override
    public void glDetachShader(int program, int shader) { System.out.println("DetachShader(int program, int shader not implemented"); }

    @Override
    public void glDisable(int cap) { 
        NativeCode.Void("glDisable(%s)", cap);
    }

    @Override
    public void glDisableVertexAttribArray(int index) { 
        NativeCode.Void("glDisableVertexAttribArray(%s)", index);
    }

    @Override
    public void glDrawArrays(int mode, int first, int count) { System.out.println("DrawArrays(int mode, int first, int count not implemented"); }

    @Override
    public void glDrawElements(int mode, int count, int type, Buffer indices) { 
        VoidPtr dataPtr = getBufferAddress(indices);
        NativeCode.Void("glDrawElements(%s,%s,%s,%s)", mode, count, type, dataPtr);
    }

    @Override
    public void glDrawElements(int mode, int count, int type, int indices) { 
        NativeCode.Void("glDrawElements(%s,%s,%s,(const void*)%s)", mode, count, type, indices);
    }

    @Override
    public void glEnable(int cap) { 
        NativeCode.Void("glEnable(%s)", cap);
    }

    @Override
    public void glEnableVertexAttribArray(int index) { 
        NativeCode.Void("glEnableVertexAttribArray(%s)", index);
    }

    @Override
    public void glFinish() { System.out.println("Finish( not implemented"); }

    @Override
    public void glFlush() { System.out.println("Flush( not implemented"); }

    @Override
    public void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) { System.out.println("FramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer not implemented"); }

    @Override
    public void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) { System.out.println("FramebufferTexture2D(int target, int attachment, int textarget, int texture, int level not implemented"); }

    @Override
    public void glFrontFace(int mode) { System.out.println("FrontFace(int mode not implemented"); }

    @Override
    public void glGenBuffers(int n, IntBuffer buffers) { System.out.println("GenBuffers(int n, IntBuffer buffers not implemented"); }

    @Override
    public int glGenBuffer() {
        int buffer = -1;
        NativeCode.Void("glGenBuffers(1, (GLuint*)&%s)", buffer);
        return buffer;
    }

    @Override
    public void glGenerateMipmap(int target) { System.out.println("GenerateMipmap(int target not implemented"); }

    @Override
    public void glGenFramebuffers(int n, IntBuffer framebuffers) { System.out.println("GenFramebuffers(int n, IntBuffer framebuffers not implemented"); }

    @Override
    public int glGenFramebuffer() {
        System.out.println("glGenFrameBuffer not implemented");
        return 0;
    }

    @Override
    public void glGenRenderbuffers(int n, IntBuffer renderbuffers) { System.out.println("GenRenderbuffers(int n, IntBuffer renderbuffers not implemented"); }

    @Override
    public int glGenRenderbuffer() {
        System.out.println("glGenRenderBuffer not implemented");
        return 0;
    }

    @Override
    public void glGenTextures(int n, IntBuffer textures) { System.out.println("GenTextures(int n, IntBuffer textures not implemented"); }

    @Override
    public int glGenTexture() {
        int tex = -1;
        NativeCode.Void("glGenTextures(1, (GLuint*)&%s)", tex);
        return tex;
    }

    @Override
    public String glGetActiveAttrib(int program, int index, IntBuffer size, Buffer type) {
        NativeCode.Void("char cname[2048]");
	VoidPtr sizePtr = getBufferAddress(size);
	VoidPtr typePtr = getBufferAddress(type);
	NativeCode.Void("glGetActiveAttrib( %s, %s, 2048, NULL, (GLint*)%s, (GLint*)%s, cname)",
                program, index, sizePtr, typePtr);
        CharPtr ascii = NativeCode.CharPtr("&cname");
        return ascii.toJavaString();
    }

    @Override
    public String glGetActiveUniform(int program, int index, IntBuffer size, Buffer type) {
        NativeCode.Void("char cname[2048]");
	    VoidPtr sizePtr = getBufferAddress(size);
	    VoidPtr typePtr = getBufferAddress(type);
	    NativeCode.Void("glGetActiveUniform( %s, %s, 2048, NULL, (GLint*)%s, (GLint*)%s, cname)",
                program, index, sizePtr, typePtr);
        CharPtr ascii = NativeCode.CharPtr("&cname");
        return ascii.toJavaString();
    }

    @Override
    public void glGetAttachedShaders(int program, int maxcount, Buffer count, IntBuffer shaders) { System.out.println("GetAttachedShaders(int program, int maxcount, Buffer count, IntBuffer shaders not implemented"); }

    @Override
    public int glGetAttribLocation(int program, String name) {
        CharPtr cname = CharPtr.allocAsciiZ(name);
        int result = NativeCode.Int("glGetAttribLocation(%s,%s)", program, cname);
        CLib.free(cname);
        return result;
    }

    @Override
    public void glGetBooleanv(int pname, Buffer params) { System.out.println("GetBooleanv(int pname, Buffer params not implemented"); }

    @Override
    public void glGetBufferParameteriv(int target, int pname, IntBuffer params) { System.out.println("GetBufferParameteriv(int target, int pname, IntBuffer params not implemented"); }

    @Override
    public int glGetError() {
        System.out.println("glGetError not implemented");
        return 0;
    }

    @Override
    public void glGetFloatv(int pname, FloatBuffer params) { System.out.println("GetFloatv(int pname, FloatBuffer params not implemented"); }

    @Override
    public void glGetFramebufferAttachmentParameteriv(int target, int attachment, int pname, IntBuffer params) { System.out.println("GetFramebufferAttachmentParameteriv(int target, int attachment, int pname, IntBuffer params not implemented"); }

    @Override
    public void glGetIntegerv(int pname, IntBuffer params) { System.out.println("GetIntegerv(int pname, IntBuffer params not implemented"); }

    @Override
    public void glGetProgramiv(int program, int pname, IntBuffer params) { 
        VoidPtr buffer = getBufferAddress(params);
        NativeCode.Void("glGetProgramiv(%s, %s, (GLint*)%s)", program, pname, buffer);
    }

    @Override
    public String glGetProgramInfoLog(int program) {
        System.out.println("glGetProgramInfoLog not implemented");
        return null;
    }

    @Override
    public void glGetRenderbufferParameteriv(int target, int pname, IntBuffer params) { System.out.println("GetRenderbufferParameteriv(int target, int pname, IntBuffer params not implemented"); }

    @Override
    public void glGetShaderiv(int shader, int pname, IntBuffer params) {
        VoidPtr buffer = getBufferAddress(params);
        NativeCode.Void("glGetShaderiv(%s, %s, (GLint*)%s)", shader, pname, buffer);
    }

    @Override
    public String glGetShaderInfoLog(int shader) {
        NativeCode.Void("char info[1024*10]");
        int length = 0;
        NativeCode.Void("glGetShaderInfoLog(%s, 1024*10, &%s, info)", shader, length);
        CharPtr ascii = NativeCode.CharPtr("&info");
        return ascii.toJavaString();
    }

    @Override
    public void glGetShaderPrecisionFormat(int shadertype, int precisiontype, IntBuffer range, IntBuffer precision) { System.out.println("GetShaderPrecisionFormat(int shadertype, int precisiontype, IntBuffer range, IntBuffer precision not implemented"); }

    @Override
    public String glGetString(int name) {
        CharPtr ascii = NativeCode.CharPtr("glGetString(%s)", name);
        return ascii == null ? "" : ascii.toJavaString();
    }

    @Override
    public void glGetTexParameterfv(int target, int pname, FloatBuffer params) { System.out.println("GetTexParameterfv(int target, int pname, FloatBuffer params not implemented"); }

    @Override
    public void glGetTexParameteriv(int target, int pname, IntBuffer params) { System.out.println("GetTexParameteriv(int target, int pname, IntBuffer params not implemented"); }

    @Override
    public void glGetUniformfv(int program, int location, FloatBuffer params) { System.out.println("GetUniformfv(int program, int location, FloatBuffer params not implemented"); }

    @Override
    public void glGetUniformiv(int program, int location, IntBuffer params) { System.out.println("GetUniformiv(int program, int location, IntBuffer params not implemented"); }

    @Override
    public int glGetUniformLocation(int program, String name) {
        CharPtr cname = CharPtr.allocAsciiZ(name);
        int result = NativeCode.Int("glGetUniformLocation(%s,%s)", program, cname);
        CLib.free(cname);
        return result;
    }

    @Override
    public void glGetVertexAttribfv(int index, int pname, FloatBuffer params) { System.out.println("GetVertexAttribfv(int index, int pname, FloatBuffer params not implemented"); }

    @Override
    public void glGetVertexAttribiv(int index, int pname, IntBuffer params) { System.out.println("GetVertexAttribiv(int index, int pname, IntBuffer params not implemented"); }

    @Override
    public void glGetVertexAttribPointerv(int index, int pname, Buffer pointer) { System.out.println("GetVertexAttribPointerv(int index, int pname, Buffer pointer not implemented"); }

    @Override
    public void glHint(int target, int mode) { System.out.println("Hint(int target, int mode not implemented"); }

    @Override
    public boolean glIsBuffer(int buffer) {
        return NativeCode.Bool("glIsBuffer(%s)", buffer);
    }

    @Override
    public boolean glIsEnabled(int cap) {
        return NativeCode.Bool("glIsEnabled(%s)", cap);
    }

    @Override
    public boolean glIsFramebuffer(int framebuffer) {
        return NativeCode.Bool("glIsFramebuffer(%s)", framebuffer);
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
    public void glLineWidth(float width) { System.out.println("LineWidth(float width not implemented"); }

    @Override
    public void glLinkProgram(int program) {
        NativeCode.Void("glLinkProgram(%s)", program);
    }

    @Override
    public void glPixelStorei(int pname, int param) { 
        NativeCode.Void("glPixelStorei(%s, %s)", pname, param);
    }

    @Override
    public void glPolygonOffset(float factor, float units) { System.out.println("PolygonOffset(float factor, float units not implemented"); }

    @Override
    public void glReadPixels(int x, int y, int width, int height, int format, int type, Buffer pixels) { System.out.println("ReadPixels(int x, int y, int width, int height, int format, int type, Buffer pixels not implemented"); }

    @Override
    public void glReleaseShaderCompiler() { System.out.println("ReleaseShaderCompiler( not implemented"); }

    @Override
    public void glRenderbufferStorage(int target, int internalformat, int width, int height) { System.out.println("RenderbufferStorage(int target, int internalformat, int width, int height not implemented"); }

    @Override
    public void glSampleCoverage(float value, boolean invert) { System.out.println("SampleCoverage(float value, boolean invert not implemented"); }

    @Override
    public void glScissor(int x, int y, int width, int height) { System.out.println("Scissor(int x, int y, int width, int height not implemented"); }

    @Override
    public void glShaderBinary(int n, IntBuffer shaders, int binaryformat, Buffer binary, int length) { System.out.println("ShaderBinary(int n, IntBuffer shaders, int binaryformat, Buffer binary, int length not implemented"); }

    @Override
    public void glShaderSource(int shader, String string) {
        CharPtr cstring = CharPtr.allocAsciiZ(string);
        NativeCode.Void("glShaderSource(%s, 1, &%s, NULL)", shader, cstring);
        CLib.free(cstring);
    }

    @Override
    public void glStencilFunc(int func, int ref, int mask) { System.out.println("StencilFunc(int func, int ref, int mask not implemented"); }

    @Override
    public void glStencilFuncSeparate(int face, int func, int ref, int mask) { System.out.println("StencilFuncSeparate(int face, int func, int ref, int mask not implemented"); }

    @Override
    public void glStencilMask(int mask) { System.out.println("StencilMask(int mask not implemented"); }

    @Override
    public void glStencilMaskSeparate(int face, int mask) { System.out.println("StencilMaskSeparate(int face, int mask not implemented"); }

    @Override
    public void glStencilOp(int fail, int zfail, int zpass) { System.out.println("StencilOp(int fail, int zfail, int zpass not implemented"); }

    @Override
    public void glStencilOpSeparate(int face, int fail, int zfail, int zpass) { System.out.println("StencilOpSeparate(int face, int fail, int zfail, int zpass not implemented"); }

    @Override
    public void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, Buffer pixels) { 
        VoidPtr ptr = getBufferAddress(pixels);
        NativeCode.Void("glTexImage2D(%s,%s,%s,%s,%s,%s,%s,%s,%s)", target, level, internalformat, width, height, border, format, type, ptr);
    }

    @Override
    public void glTexParameterf(int target, int pname, float param) { System.out.println("TexParameterf(int target, int pname, float param not implemented"); }

    @Override
    public void glTexParameterfv(int target, int pname, FloatBuffer params) { System.out.println("TexParameterfv(int target, int pname, FloatBuffer params not implemented"); }

    @Override
    public void glTexParameteri(int target, int pname, int param) { 
        NativeCode.Void("glTexParameteri(%s,%s,%s)", target, pname, param);
    }

    @Override
    public void glTexParameteriv(int target, int pname, IntBuffer params) { System.out.println("TexParameteriv(int target, int pname, IntBuffer params not implemented"); }

    @Override
    public void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Buffer pixels) { System.out.println("TexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Buffer pixels not implemented"); }

    @Override
    public void glUniform1f(int location, float x) { System.out.println("Uniform1f(int location, float x not implemented"); }

    @Override
    public void glUniform1fv(int location, int count, FloatBuffer v) { System.out.println("Uniform1fv(int location, int count, FloatBuffer v not implemented"); }

    @Override
    public void glUniform1fv(int location, int count, float[] v, int offset) { System.out.println("Uniform1fv(int location, int count, float[] v, int offset not implemented"); }

    @Override
    public void glUniform1i(int location, int x) { 
        NativeCode.Void("glUniform1i(%s,%s)", location, x);
    }

    @Override
    public void glUniform1iv(int location, int count, IntBuffer v) { System.out.println("Uniform1iv(int location, int count, IntBuffer v not implemented"); }

    @Override
    public void glUniform1iv(int location, int count, int[] v, int offset) { System.out.println("Uniform1iv(int location, int count, int[] v, int offset not implemented"); }

    @Override
    public void glUniform2f(int location, float x, float y) { System.out.println("Uniform2f(int location, float x, float y not implemented"); }

    @Override
    public void glUniform2fv(int location, int count, FloatBuffer v) { System.out.println("Uniform2fv(int location, int count, FloatBuffer v not implemented"); }

    @Override
    public void glUniform2fv(int location, int count, float[] v, int offset) { System.out.println("Uniform2fv(int location, int count, float[] v, int offset not implemented"); }

    @Override
    public void glUniform2i(int location, int x, int y) { System.out.println("Uniform2i(int location, int x, int y not implemented"); }

    @Override
    public void glUniform2iv(int location, int count, IntBuffer v) { System.out.println("Uniform2iv(int location, int count, IntBuffer v not implemented"); }

    @Override
    public void glUniform2iv(int location, int count, int[] v, int offset) { System.out.println("Uniform2iv(int location, int count, int[] v, int offset not implemented"); }

    @Override
    public void glUniform3f(int location, float x, float y, float z) { System.out.println("Uniform3f(int location, float x, float y, float z not implemented"); }

    @Override
    public void glUniform3fv(int location, int count, FloatBuffer v) { System.out.println("Uniform3fv(int location, int count, FloatBuffer v not implemented"); }

    @Override
    public void glUniform3fv(int location, int count, float[] v, int offset) { System.out.println("Uniform3fv(int location, int count, float[] v, int offset not implemented"); }

    @Override
    public void glUniform3i(int location, int x, int y, int z) { System.out.println("Uniform3i(int location, int x, int y, int z not implemented"); }

    @Override
    public void glUniform3iv(int location, int count, IntBuffer v) { System.out.println("Uniform3iv(int location, int count, IntBuffer v not implemented"); }

    @Override
    public void glUniform3iv(int location, int count, int[] v, int offset) { System.out.println("Uniform3iv(int location, int count, int[] v, int offset not implemented"); }

    @Override
    public void glUniform4f(int location, float x, float y, float z, float w) { System.out.println("Uniform4f(int location, float x, float y, float z, float w not implemented"); }

    @Override
    public void glUniform4fv(int location, int count, FloatBuffer v) { System.out.println("Uniform4fv(int location, int count, FloatBuffer v not implemented"); }

    @Override
    public void glUniform4fv(int location, int count, float[] v, int offset) { System.out.println("Uniform4fv(int location, int count, float[] v, int offset not implemented"); }

    @Override
    public void glUniform4i(int location, int x, int y, int z, int w) { System.out.println("Uniform4i(int location, int x, int y, int z, int w not implemented"); }

    @Override
    public void glUniform4iv(int location, int count, IntBuffer v) { System.out.println("Uniform4iv(int location, int count, IntBuffer v not implemented"); }

    @Override
    public void glUniform4iv(int location, int count, int[] v, int offset) { System.out.println("Uniform4iv(int location, int count, int[] v, int offset not implemented"); }

    @Override
    public void glUniformMatrix2fv(int location, int count, boolean transpose, FloatBuffer value) { System.out.println("UniformMatrix2fv(int location, int count, boolean transpose, FloatBuffer value not implemented"); }

    @Override
    public void glUniformMatrix2fv(int location, int count, boolean transpose, float[] value, int offset) { System.out.println("UniformMatrix2fv(int location, int count, boolean transpose, float[] value, int offset not implemented"); }

    @Override
    public void glUniformMatrix3fv(int location, int count, boolean transpose, FloatBuffer value) { System.out.println("UniformMatrix3fv(int location, int count, boolean transpose, FloatBuffer value not implemented"); }

    @Override
    public void glUniformMatrix3fv(int location, int count, boolean transpose, float[] value, int offset) { System.out.println("UniformMatrix3fv(int location, int count, boolean transpose, float[] value, int offset not implemented"); }

    @Override
    public void glUniformMatrix4fv(int location, int count, boolean transpose, FloatBuffer value) { 
        VoidPtr dataPtr = getBufferAddress(value);
        NativeCode.Void("glUniformMatrix4fv(%s,%s,%s,(GLfloat*)%s)", location, count, transpose, dataPtr );
    }

    @Override
    public void glUniformMatrix4fv(int location, int count, boolean transpose, float[] value, int offset) { 
        VoidPtr dataPtr = VoidPtr.fromAnyArray(value);
        NativeCode.Void("float* floats = (float*)%s", dataPtr);
        NativeCode.Void("glUniformMatrix4fv(%s,%s,%s,(GLfloat*)&floats[%s])", location, count, transpose, offset );
    }

    @Override
    public void glUseProgram(int program) { 
        NativeCode.Void("glUseProgram(%s)", program);
    }

    @Override
    public void glValidateProgram(int program) { System.out.println("ValidateProgram(int program not implemented"); }

    @Override
    public void glVertexAttrib1f(int indx, float x) { System.out.println("VertexAttrib1f(int indx, float x not implemented"); }

    @Override
    public void glVertexAttrib1fv(int indx, FloatBuffer values) { System.out.println("VertexAttrib1fv(int indx, FloatBuffer values not implemented"); }

    @Override
    public void glVertexAttrib2f(int indx, float x, float y) { System.out.println("VertexAttrib2f(int indx, float x, float y not implemented"); }

    @Override
    public void glVertexAttrib2fv(int indx, FloatBuffer values) { System.out.println("VertexAttrib2fv(int indx, FloatBuffer values not implemented"); }

    @Override
    public void glVertexAttrib3f(int indx, float x, float y, float z) { System.out.println("VertexAttrib3f(int indx, float x, float y, float z not implemented"); }

    @Override
    public void glVertexAttrib3fv(int indx, FloatBuffer values) { System.out.println("VertexAttrib3fv(int indx, FloatBuffer values not implemented"); }

    @Override
    public void glVertexAttrib4f(int indx, float x, float y, float z, float w) { System.out.println("VertexAttrib4f(int indx, float x, float y, float z, float w not implemented"); }

    @Override
    public void glVertexAttrib4fv(int indx, FloatBuffer values) { System.out.println("VertexAttrib4fv(int indx, FloatBuffer values not implemented"); }

    @Override
    public void glVertexAttribPointer(int indx, int size, int type, boolean normalized, int stride, Buffer ptr) { 
        VoidPtr vp = getBufferAddress(ptr);
        NativeCode.Void("glVertexAttribPointer(%s,%s,%s,%s,%s,%s)", indx, size, type, normalized, stride, vp);
    }

    @Override
    public void glVertexAttribPointer(int indx, int size, int type, boolean normalized, int stride, int ptr) { 
        NativeCode.Void("glVertexAttribPointer(%s,%s,%s,%s,%s,(const void*)%s)", indx, size, type, normalized, stride, ptr);
    }

    @Override
    public void glViewport(int x, int y, int width, int height) { 
        IOSGLES20.x = x;
        IOSGLES20.y = y;
        IOSGLES20.width = width;
        IOSGLES20.height = height;        
        NativeCode.Void("glViewport(%s,%s,%s,%s)", x,y,width,height);
    }
}
package com.cava.desktop

import com.cava.IGL
import org.lwjgl.opengl.GL20 as G;

class DesktopGL : IGL {

    override fun clearColor(red: Float, green: Float, blue: Float, alpha: Float) = G.glClearColor(red, green, blue, alpha)

    override fun clear(flags: Int) = G.glClear(flags)

    override fun viewPort(x: Int, y: Int, width: Int, height: Int) = G.glViewport(x,y,width,height)

    override fun colorMask(red: Boolean, green: Boolean, blue: Boolean, alpha: Boolean) = G.glColorMask(red, green, blue, alpha)

    override fun enable(flags: Int) = G.glEnable(flags)

    override fun disable(flags: Int) = G.glDisable(flags)

    override fun depthMask(flag: Boolean) = G.glDepthMask(flag)

    override fun clearDepth(depth: Float) = G.glClearDepth(depth.toDouble())

    override fun stencilMask(mask: Int) = G.glStencilMask(mask)

    override fun clearStencil(stencil: Int) = G.glClearStencil(stencil)

    override fun createBuffer(): Int = G.glGenBuffers()

    override fun deleteBuffer(buffer: Int) = G.glDeleteBuffers(buffer)

    override fun createShader(type: Int): Int = G.glCreateShader(type)

    override fun deleteShader(shader: Int) = G.glDeleteShader(shader)

    override fun shaderSource(shader: Int, source: String) = G.glShaderSource(shader, source)

    override fun compileShader(shader: Int) = G.glCompileShader(shader)

    override fun getShaderi(shader: Int, paramName: Int): Int = G.glGetShaderi(shader, paramName)

    override fun createProgram(): Int = G.glCreateProgram()

    override fun attachShader(program: Int, shader: Int) = G.glAttachShader(program, shader)

    override fun linkProgram(program: Int) = G.glLinkProgram(program)

    override fun getProgrami(program: Int, paramName: Int): Int = G.glGetProgrami(program,paramName)

    override fun getAttribLocation(program:Int, name:String):Int = G.glGetAttribLocation(program, name)
}
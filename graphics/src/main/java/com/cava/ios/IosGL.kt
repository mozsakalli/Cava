package com.cava.ios

import com.cava.IGL

class IosGL : IGL {
    override fun clearColor(red: Float, green: Float, blue: Float, alpha: Float) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun clear(flags: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun viewPort(x: Int, y: Int, width: Int, height: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun colorMask(red: Boolean, green: Boolean, blue: Boolean, alpha: Boolean) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun enable(flags: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun disable(flags: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun depthMask(flag: Boolean) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun clearDepth(depth: Float) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun stencilMask(mask: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun clearStencil(stencil: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun createBuffer(): Int {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun deleteBuffer(buffer: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun createShader(type: Int): Int {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun deleteShader(type: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun shaderSource(shader: Int, source: String) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun compileShader(shader: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun getShaderi(shader: Int, paramName: Int): Int {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun createProgram(): Int {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun attachShader(program: Int, shader: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun linkProgram(program: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun getProgrami(program: Int, paramName: Int): Int {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun getAttribLocation(program: Int, name: String): Int {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

}
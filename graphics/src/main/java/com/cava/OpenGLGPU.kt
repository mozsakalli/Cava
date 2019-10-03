package com.cava

class GLGPU(gl:GL) : GPU() {
    var gl = gl;

    override fun clear(r: Float, g: Float, b: Float, a: Float, depth: Float, stencil: Int, colorFlag: Boolean, depthFlag: Boolean, stencilFlag: Boolean) {
        gl.colorMask(true, true, true, true)
        gl.clearColor(r, g,b,a)
        if(depthFlag) {
            gl.enable(GL.DEPTH_TEST)
            gl.depthMask(GL.TRUE)
            gl.clearDepth(depth)
        }

        gl.stencilMask(0xff)
        gl.clearStencil(stencil)
        var flags:Int = 0
        if(colorFlag) flags = flags or GL.COLOR_BUFFER_BIT
        if(depthFlag) flags = flags or GL.DEPTH_BUFFER_BIT
        if(stencilFlag) flags = flags or GL.STENCIL_BUFFER_BIT

        gl.clear(flags)
    }

    override fun createIndexBuffer(capacity: Int): IndexBuffer = GLIndexBuffer(capacity, gl)
    override fun createVertexBuffer(capacity: Int): VertexBuffer = GLVertexBuffer(capacity, gl)
    override fun createProgram(code: Any): GPUProgram = GLProgram(gl, code as Array<String>)

    override fun drawTriangles(vertices: VertexBuffer, indices: IndexBuffer, start: Int, count: Int) {
        var vert = vertices as GLVertexBuffer
        var ind = indices as GLIndexBuffer

        if(vert.static && vert.dirty) {
            vert.upload()
            vert.dirty = false
        }
        if(ind.static && ind.dirty) {
            ind.upload()
            ind.dirty = false;
        }

        if(vert.static) {
            if(ind.static) {
            }
        }
    }

}

class GLIndexBuffer(capacity:Int, gl:GL) : IndexBuffer(capacity) {

    var gl = gl
    var handle:Int = -1


    override fun dispose() {
        if(handle != -1) {
            gl.deleteBuffer(handle)
        }
    }


    fun upload() {
        if(handle == -1) {
            handle = gl.createBuffer()
        }
        if(size > 0) {

        }
    }
}

class GLVertexBuffer(capacity: Int, gl:GL) : VertexBuffer(capacity) {
    var gl = gl;

    var handle:Int = -1

    override fun dispose() {
        if(handle != -1) {
            gl.deleteBuffer(handle)
            handle = -1
        }
    }

    fun upload() {
        if(handle == -1) {
            handle = gl.createBuffer()
        }
    }
}

class GLProgram(gl:GL, code:Array<String>) : GPUProgram() {
    val gl = gl
}
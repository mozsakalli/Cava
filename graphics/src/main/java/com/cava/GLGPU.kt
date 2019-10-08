package com.cava

class GLGPU(gl:IGL) : GPU() {

    var gl = gl;

    override fun clear(r: Float, g: Float, b: Float, a: Float, depth: Float, stencil: Int, colorFlag: Boolean, depthFlag: Boolean, stencilFlag: Boolean) {
        gl.colorMask(true, true, true, true)
        gl.clearColor(r, g,b,a)
        if(depthFlag) {
            gl.enable(IGL.DEPTH_TEST)
            gl.depthMask(true)
            gl.clearDepth(depth)
        }

        gl.stencilMask(0xff)
        gl.clearStencil(stencil)
        var flags:Int = 0
        if(colorFlag) flags = flags or IGL.COLOR_BUFFER_BIT
        if(depthFlag) flags = flags or IGL.DEPTH_BUFFER_BIT
        if(stencilFlag) flags = flags or IGL.STENCIL_BUFFER_BIT

        gl.clear(flags)
    }


    override fun createIndexBuffer(capacity: Int): IndexBuffer = GLIndexBuffer(capacity, gl)
    override fun createVertexBuffer(capacity: Int): VertexBuffer = GLVertexBuffer(capacity, gl)
    override fun createProgram(code: Any): GPUProgram = GLProgram(gl, code as Array<String>)


    override fun commit(flags: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }


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

class GLIndexBuffer(capacity:Int, gl:IGL) : IndexBuffer(capacity) {

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

class GLVertexBuffer(capacity: Int, gl:IGL) : VertexBuffer(capacity) {
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

class GLProgram : GPUProgram {

    val gl:IGL
    var handle:Int = -1

    constructor(gl:IGL, code:Array<String>)  {
        this.gl = gl
        var vert = compileShader(IGL.VERTEX_SHADER, code[0])
        var frag = compileShader(IGL.FRAGMENT_SHADER,
                """
                #ifdef GL_ES
                precision mediump float;
                #endif
                ${code[1]}
                """)
        handle = gl.createProgram()
        gl.attachShader(handle, vert)
        gl.attachShader(handle, frag)

        gl.linkProgram(handle)

        val comp = gl.getProgrami(handle, IGL.LINK_STATUS)
        if (comp == IGL.FALSE) {
            throw RuntimeException("Cant compile shaders")
        }
    }

    private fun compileShader(type: Int, source: String): Int {
        val shader = gl.createShader(type)
        if (shader == 0) {
            throw RuntimeException(
                    "could not create shader object; check ShaderProgram.isSupported()")
        }
        gl.shaderSource(shader, source)
        gl.compileShader(shader)

        val comp = gl.getShaderi(shader, IGL.COMPILE_STATUS)
        if (comp == IGL.FALSE) {
            throw RuntimeException("Could not compile $source")
        }
        return shader
    }

    override fun setupVertexLayout(layout: VertexLayout) {
        layout.attributes.forEach {
            it.gpuOffset = gl.getAttribLocation(handle, it.name)
        }
    }

}
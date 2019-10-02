package com.cava

enum class VertexLayoutDataType(val size:Int, val normalized:Boolean) {
    FLOAT1(1,false),
    FLOAT2(2,false),
    FLOAT3(3,false),
    FLOAT4(4,false),
    COLOR(1,true)
}
class VertexLayoutAttribute(val name:String, val type:VertexLayoutDataType) {
    var offset:Int = 0
    var gpuOffset:Int = 0
}

class VertexLayout {
    val attributes:Array<VertexLayoutAttribute>
    var size = 0
    constructor(attributes: Array<VertexLayoutAttribute>) {
        this.attributes = attributes

        attributes.forEach { attr ->
            attr.offset = size
            size += attr.type.size
        }
    }
}

abstract class GPU {

    internal enum class DirtyFlags(val value:Int) {
        VIEWPORT(1),
        SCISSOR(2),
        CULLMODE(4),
        DEPTHMASK(8),
        DEPTHTEST(16),
        BLENDEQ(32),
        BLEND(64),
        TEXTURES(128),
        INDEXBUFFER(256),
        VERTEXBUFFER(512)
    }

    var pendingFlags = 0

    abstract fun clear(r:Float, g:Float, b:Float, a:Float, depth:Float=0f, stencil:Int=0, colorFlag:Boolean = true, depthFlag:Boolean = false, stencilFlag:Boolean = false)

    internal var viewport = Rect()
    fun viewport(x:Float, y:Float, width:Float, height:Float) {
        if(viewport.x != x || viewport.y != y || viewport.width != width || viewport.height != height) {
            viewport.set(x, y, width, height)
            pendingFlags = pendingFlags.or(DirtyFlags.VIEWPORT.value)
        }
    }

    internal var scissor = Rect()
    fun scissor(x:Float, y:Float, width:Float, height:Float) {
        if(scissor.x != x || scissor.y != y || scissor.width != width || scissor.height != height) {
            scissor.set(x, y, width, height)
            pendingFlags = pendingFlags.or(DirtyFlags.SCISSOR.value)
        }
    }

    abstract fun createProgram(code:Any):Int
    abstract fun createIndexBuffer(capacity:Int):IndexBuffer
    abstract fun createVertexBuffer(capacity:Int):VertexBuffer

    abstract fun commit(flags:Int = 0xffffff)


    abstract fun drawTriangles(vertices:VertexBuffer, indices:IndexBuffer, start:Int, count:Int)
}


abstract class VertexBuffer(capacity:Int, static:Boolean = false) {

    var buffer = FloatArray(capacity)
    var dirty = false
    var size = 0
    var static = static

    abstract fun dispose()
}

abstract class IndexBuffer(capacity: Int, static:Boolean = false) {

    var buffer = IntArray(capacity)
    var dirty = false
    var size = 0
    var static = static

    abstract fun dispose()

}
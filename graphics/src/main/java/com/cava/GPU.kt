package com.cava

abstract class GPU {

    abstract fun clear(r:Float, g:Float, b:Float, a:Float, depth:Float=0f, stencil:Int=0, colorFlag:Boolean = true, depthFlag:Boolean = false, stencilFlag:Boolean = false)
    abstract fun indexBuffer(capacity:Int):IndexBuffer
    abstract fun vertexBuffer(capacity:Int):VertexBuffer
}
package com.cava.desktop

import com.cava.GPU
import com.cava.IndexBuffer
import com.cava.VertexBuffer

class DesktopGPU : GPU() {
    override fun clear(r: Float, g: Float, b: Float, a: Float, depth: Float, stencil: Int, colorFlag: Boolean, depthFlag: Boolean, stencilFlag: Boolean) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun indexBuffer(capacity: Int): IndexBuffer = DesktopIndexBuffer(capacity)
    override fun vertexBuffer(capacity: Int): VertexBuffer = DesktopVertexBuffer(capacity)

}
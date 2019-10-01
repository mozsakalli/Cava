package com.cava

abstract class VertexBuffer(capacity:Int) {

    var buffer = FloatArray(capacity)
    var dirty = false
    var size = 0

}
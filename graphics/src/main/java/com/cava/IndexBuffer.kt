package com.cava

abstract class IndexBuffer(capacity: Int) {

    var buffer = IntArray(capacity)
    var dirty = false
    var size = 0



}
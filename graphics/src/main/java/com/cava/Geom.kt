package com.cava

class Rect(
        var x:Float,
        var y:Float,
        var width:Float,
        var height:Float) {
    constructor() : this(0f,0f,0f,0f)
    fun set(x:Float=0f, y:Float=0f, width:Float=0f, height:Float=0f) {
        this.x = x
        this.y = y
        this.width = width
        this.height = height
    }
}




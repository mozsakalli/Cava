package com.cava

data class Color (
        var red:Byte,
        var green:Byte,
        var blue:Byte,
        var alpha:Byte) {

    constructor() : this(0,0,0,0)
    constructor(hex:Int): this() {
        set(hex)
    }

    fun set(hex:Int) {
        alpha = (hex shr 24 and 255).toByte()
        red = (hex shr 16 and 255).toByte()
        green = (hex shr 8 and 255).toByte()
        blue = (hex and 255).toByte()
    }
}
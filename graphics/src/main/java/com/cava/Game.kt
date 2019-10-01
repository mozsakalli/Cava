package com.cava

interface Game {

    fun init()
    fun update()
    fun render()
    fun resize(width:Float, height:Float)
}
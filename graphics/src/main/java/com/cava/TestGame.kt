package com.cava

import com.cava.desktop.DesktopPlatform
import com.cava.ios.IosPlatform

class TestGame : Game {
    override fun init() {
    }

    override fun update() {
    }

    override fun render() {
        Platform.current.gpu.clear(1f,0f,0f,1f)
    }

    override fun resize(width: Float, height: Float) {
    }

}

fun main(args: Array<String>) {
    IosPlatform(TestGame())
}
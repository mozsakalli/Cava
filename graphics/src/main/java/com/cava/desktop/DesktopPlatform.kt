/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cava.desktop

import com.cava.GLGPU
import com.cava.Game
import com.cava.GPU
import com.cava.Platform
import org.lwjgl.glfw.*;
import org.lwjgl.opengl.*;
import org.lwjgl.glfw.GLFW.*
import org.lwjgl.system.MemoryUtil.*
import org.lwjgl.glfw.GLFW.glfwSetWindowShouldClose
import org.lwjgl.glfw.GLFW.GLFW_RELEASE
import org.lwjgl.glfw.GLFW.GLFW_KEY_ESCAPE
import org.lwjgl.glfw.GLFW.glfwSetKeyCallback
import org.lwjgl.glfw.GLFW.glfwShowWindow
import org.lwjgl.glfw.GLFW.glfwSwapInterval
import org.lwjgl.glfw.GLFW.glfwMakeContextCurrent
import org.lwjgl.glfw.GLFW.glfwSetWindowPos
import org.lwjgl.glfw.GLFW.glfwGetPrimaryMonitor
import org.lwjgl.glfw.GLFW.glfwGetVideoMode
import org.lwjgl.system.MemoryStack.stackPush
import org.lwjgl.glfw.GLFW.glfwPollEvents
import org.lwjgl.glfw.GLFW.glfwSwapBuffers
import org.lwjgl.glfw.GLFW.glfwWindowShouldClose

import org.lwjgl.opengl.GL20.*;

/*

  @author mustafa
  Created on Oct 1, 2019
*/
open class DesktopPlatform(game:Game) : Platform() {

    var window:Long = 0;
    var game:Game = game;

    fun run() {
        gpu = GLGPU(DesktopGL())
        init()
        loop()
    }

    fun init() {
        GLFWErrorCallback.createPrint(System.err).set()
        if (!glfwInit())
            throw IllegalStateException("Unable to initialize GLFW")

        glfwDefaultWindowHints() // optional, the current window hints are already the default
        glfwWindowHint(GLFW_VISIBLE, GLFW_FALSE) // the window will stay hidden after creation
        glfwWindowHint(GLFW_RESIZABLE, GLFW_TRUE)

        window = glfwCreateWindow(300, 300, "Hello World!", NULL, NULL)
        if (window === NULL)
            throw RuntimeException("Failed to create the GLFW window")

        // Setup a key callback. It will be called every time a key is pressed, repeated or released.
        glfwSetKeyCallback(window) { window, key, scancode, action, mods ->
            if (key == GLFW_KEY_ESCAPE && action == GLFW_RELEASE)
                glfwSetWindowShouldClose(window, true) // We will detect this in the rendering loop
        }

        val stack = stackPush();
        // Get the thread stack and push a new frame
        val pWidth = stack.mallocInt(1) // int*
        val pHeight = stack.mallocInt(1) // int*

        // Get the window size passed to glfwCreateWindow
        glfwGetWindowSize(window, pWidth, pHeight)

        // Get the resolution of the primary monitor
        val vidmode = glfwGetVideoMode(glfwGetPrimaryMonitor())

        // Center the window
        glfwSetWindowPos(
                window,
                (vidmode!!.width() - pWidth.get(0)) / 2,
                (vidmode.height() - pHeight.get(0)) / 2
        )
        stack.close();
        //} // the stack frame is popped automatically

        // Make the OpenGL context current
        glfwMakeContextCurrent(window)
        // Enable v-sync
        glfwSwapInterval(1)

        // Make the window visible
        glfwShowWindow(window)
    }

    fun loop() {
        GL.createCapabilities()

        game.init()

        while (!glfwWindowShouldClose(window)) {
            game.update()
            game.render()

            glfwSwapBuffers(window) // swap the color buffers

            glfwPollEvents()
        }
    }

}


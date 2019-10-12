package com.cava

abstract class Platform {

    lateinit var gpu:GPU
        internal set

    constructor() {
        Platform.current = this;
    }
    /*
    constructor(gpu:GPU) {
        this.gpu = gpu
        Platform.current = this;
    }*/

    companion object {
        lateinit var current:Platform;
    }
}
package com.cava.ios

import cava.annotation.Keep
import cava.annotation.ObjC
import cava.apple.coreanimation.CAEAGLLayer
import cava.apple.foundation.NSDictionary
import cava.apple.foundation.NSObject
import cava.apple.uikit.*
import com.cava.GLGPU
import com.cava.Game
import com.cava.Platform
import com.cava.desktop.DesktopGL


@Keep
class GameView : UIView() {

    companion object {
        @JvmStatic
        @ObjC("layerClass")
        fun getLayerClass(): Class<*> {
            return NSObject.getObjCClass(CAEAGLLayer::class.java)
        }
    }

}

class GameViewController : UIViewController() {
    override fun loadView() {
        this.view = GameView()
    }

    override fun viewDidLoad() {
    }
}

class IosPlatformDelegate : UIApplicationDelegateAdapter() {

    override fun didFinishLaunchingWithOptions(application: UIApplication?, launchOptions: NSDictionary?): Boolean {
        return true;
    }
}

class IosPlatform : Platform {
    val game:Game;
    lateinit var window:UIWindow
    lateinit var controller:GameViewController

    constructor(game:Game) {
        this.game = game;
        gpu = GLGPU(IosGL())
        var bounds = UIScreen.getMainScreen().bounds;
        window = UIWindow().initWithFrame(bounds)
        controller = GameViewController()
        window.setRootViewController(controller)
        window.makeKeyAndVisible()
    }

}
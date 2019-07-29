/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cava.sample

import cava.annotation.Keep
import cava.apple.coreanimation.CAEAGLLayer
import cava.apple.coreanimation.CALayer
import cava.apple.coregraphics.CGRect
import cava.apple.uikit.*;
import cava.apple.foundation.*;
import cava.apple.opengles.EAGLContext
import cava.apple.opengles.EAGLRenderingAPI
import cava.platform.*;


/*

  @author mustafa
  Created on Jul 29, 2019
*/
open class Application {
    companion object {
       @JvmStatic var graphics: Graphics? = null;
    }
}

class IOSViewController : UIViewController() {
    override fun touchesBegan(touches: NSSet<UITouch>?, event: UIEvent?) {
        println("controller-touch")
    }
}
@Keep
class IOSView : UIView() {
    override fun <T : Any?> getLayer(layerClass: Class<out CALayer>?): T {
        return NSObject.getObjCClass(CAEAGLLayer::class.java) as T;
    }

    @Keep
    override fun touchesBegan(touches: NSSet<UITouch>?, event: UIEvent?) {
        println("touch!");
    }
}

public class IOSGraphics : OpenGLGraphics() {
    var context:EAGLContext;

    init {
        context = EAGLContext().initWithAPI(EAGLRenderingAPI.OpenGLES2);
        if(context.nativePeer != null)
            println("OpenGLES 2.0 Detected");
    }
    override fun glCreateProgram(): Int {
        return NativeCode.Int("glCreateProgram()");
    }

    override fun glCreateShader(type: Int): Int {
        return NativeCode.Int("glCreateShader(%s)", type);
    }
}

public class IOSApplication : Application() {

    abstract class Delegate : UIApplicationDelegateAdapter() {
    
        var app:IOSApplication? = null;    
        
        abstract fun createApplication():IOSApplication;
        
        override fun didFinishLaunchingWithOptions(application: UIApplication, options: NSDictionary): Boolean {
            app = createApplication();
            return app!!.didFinishLaunching();
        }
    }
    
    var window:UIWindow? = null;
    var controller:IOSViewController? = null;
    var view:IOSView? = null;
    var graphics:IOSGraphics? = null;
    
    fun didFinishLaunching():Boolean {
        println("Sarted");

        val scale = UIScreen.getMainScreen().scale;
        var bounds = UIScreen.getMainScreen().bounds;
        bounds = CGRect(bounds.minX*scale, bounds.minY*scale, bounds.width*scale, bounds.height*scale);
        window = UIWindow().initWithFrame(bounds);
        view = IOSView().initWithFrame(bounds);
        controller = IOSViewController();
        controller!!.setView(view);
        
        window!!.setRootViewController(controller);
        
        graphics = IOSGraphics();
        Application.graphics = graphics
        return true;
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cava.sample

import cava.annotation.Framework
import cava.annotation.Include
import cava.annotation.Keep
import cava.apple.coreanimation.CAEAGLLayer
import cava.apple.coreanimation.CALayer
import cava.apple.coregraphics.CGRect
import cava.apple.uikit.*;
import cava.apple.foundation.*;
import cava.apple.opengles.EAGLContext
import cava.apple.opengles.EAGLRenderingAPI
import cava.c.CLib
import cava.c.CharPtr
import cava.platform.*;


/*

  @author mustafa
  Created on Jul 29, 2019
*/
open class Application {
    companion object {
        @JvmStatic var instance:Application? = null;
       @JvmStatic var graphics: Graphics? = null;
    }
}

class IOSViewController : UIViewController() {
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

@Include("<OpenGLES/ES2/gl.h> <OpenGLES/ES2/glext.h>")
@Framework("OpenGLES.framework")
@Keep
public class IOSGraphics : OpenGLGraphics() {
    var context:EAGLContext;

    init {
        context = EAGLContext().initWithAPI(EAGLRenderingAPI.OpenGLES2);
    }
    override fun glGetShaderParameter(shader: Int, paramName: Int): Boolean {
        NativeCode.Void("int status; glGetShaderiv(%s,%s,&status)", shader, paramName)
        return NativeCode.Bool("status != 0")
    }

    override fun glAttachShader(program: Int, shader: Int) {
        NativeCode.Void("glAttachShader(%s, %s)", program, shader);
    }

    override fun glLinkProgram(program: Int) {
        NativeCode.Void("glLinkProgram(%s)", program);
    }

    override fun glValidateProgram(program: Int) {
        NativeCode.Void("glValidateProgram(%s)", program)
    }

    override fun glGetProgramParameter(program: Int, paramName: Int):Boolean {
        NativeCode.Void("int status; glGetProgramiv(%s, %s, &status)", program, paramName)
        return NativeCode.Bool("status != 0")
    }

    override fun glCreateProgram(): Int {
        return NativeCode.Int("glCreateProgram()");
    }

    override fun glCreateShader(type: Int): Int {
        return NativeCode.Int("glCreateShader(%s)", type);
    }
    override fun glShaderSource(shader: Int, source: String) {
        val ascii = CharPtr.allocAsciiZ(source);
        NativeCode.Void("glShaderSource(%s, 1, &%s, NULL)", shader, ascii)
        CLib.free(ascii);
    }
    override fun glCompileShader(shader: Int) {
        NativeCode.Void("glCompileShader(%s)", shader)
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
    var context:EAGLContext? = null;

    init {
        Application.instance = this;
    }

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
        window!!.makeKeyAndVisible();

        context = EAGLContext().initWithAPI(EAGLRenderingAPI.OpenGLES2);
        if(context!!.nativePeer != null)
            println("OpenGLES 2.0 Detected");
        graphics = IOSGraphics();
        Application.graphics = graphics
        return true;
    }
}
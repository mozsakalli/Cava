package digiplay.native;

import cpp.objc.NSDictionary;

@:objc
@:native("UIApplicationDelegate")
@:include("UIKit/UIKit.h")
interface UIApplicationDelegate {

    function didFinishLaunchingWithOptions(app:cpp.Pointer<UIApplication>, options:NSDictionary):Bool;
    
}
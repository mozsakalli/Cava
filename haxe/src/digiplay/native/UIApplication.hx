package digiplay.native;

import cpp.objc.NSString;

@:include("UIKit/UIKit.h")
@:native("UIApplication")
extern class UIApplication {

    @:native("UIApplicationMain")
    public static function main(argc:Int, argv:cpp.ConstCharStar, principal:NSString, delegate:NSString):Void;
    
}
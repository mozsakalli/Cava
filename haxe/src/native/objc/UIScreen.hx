package native.objc;

@:objc
@:native("UIScreen")
@:include("UIKit/UIKit.h")
extern class UIScreen {

    public var bounds(default,null):CGRect;

    public static function mainScreen():UIScreen;
    
}
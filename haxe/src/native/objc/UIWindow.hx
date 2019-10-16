package native.objc;

import cpp.objc.NSObject.NSObjectData;

@:objc
@:native("UIWindow")
@:include("UIKit/UIKit.h")
extern class UIWindow {

    public static function alloc():UIWindow;
    public function initWithFrame(frame:CGRect):UIWindow;
    public var rootViewController(get,set):UIViewController;
    inline function set_rootViewController(v:UIViewController):UIViewController {
        var _id = this;
        var _np = v.nativePeer;
        untyped __cpp__("((UIWindow*)_id).rootViewController = (UIViewController*)_np");
        return v;
    }
    public function makeKeyAndVisible():Void;

}
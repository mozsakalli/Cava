package native.objc;

import cpp.objc.NSString;

class OBJC {

    public static function selector(name:String):Selector {
        var str = NSString.fromString(name);
        return untyped __cpp__("NSSelectorFromString(str)");
    }
}
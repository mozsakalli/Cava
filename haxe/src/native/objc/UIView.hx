package native.objc;

@:headers("UIKit/UIKit.h")
@:build(native.objc.ObjCBuilder.build())
class UIView extends ObjCObject {

    public function new() {
        super();
    }

    public function initWithFrame(bounds:CGRect) {
        untyped __cpp__("[(id)nativePeer initWithFrame:bounds]");
    }

    /*
    @:selector("layerClass")
    @:static
    public function layerClass():ObjCClass {
        return null;
    }
    */
}
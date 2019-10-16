package native.objc;

import cpp.vm.Gc;

@:headers("UIKit/UIKit.h")
@:build(native.objc.ObjCBuilder.build())
class UIViewController extends ObjCObject {

    public function new() {
        super();
    }

    @:final public function init():Void {
        untyped __cpp__("[(id)nativePeer init]");
    }

    @:selector
    public function loadView() {}

    @:selector
    public function viewDidLoad() {}
}
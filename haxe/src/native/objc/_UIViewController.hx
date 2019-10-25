package native.objc;

import cpp.vm.Gc;

@:headerCode("#import <UIKit/UIKit.h>")
@:objcProtocol("UIViewController")
interface _UIViewController {
    
    @:objcProtocol("")
    public function loadView():Void;
}
/*
@:headers("UIKit/UIKit.h")
@:build(native.objc.ObjCBuilder.build())
class UIViewController extends ObjCObject {

    public function new() {
        super();
        nativePeerOwner = false;
    }

    @:final public function init():Void {
        untyped __cpp__("[(id)nativePeer init]");
    }

    @:selector
    public function loadView() {}

    @:selector
    public function viewDidLoad() {}
}
*/
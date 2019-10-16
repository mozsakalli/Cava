package;

import digiplay.Game;
import native.objc.*;

@:headerCode('
#import <UIKit/UIKit.h>
@interface _hx_objc_Ctrl : UIViewController {
    @public ::hx::ObjectPtr<::Ctrl_obj> haxePeer;
}
@end
')
@:cppFileCode('
#import <UIKit/UIKit.h>
@implementation _hx_objc_Ctrl
- (void)loadView {
    haxePeer->loadView();
}
@end
')
class Ctrl extends UIViewController {

    public function new() {
        var thiz = this;
        untyped __cpp__('
            _hx_objc_Ctrl* other = [_hx_objc_Ctrl alloc];
            other->haxePeer = thiz;
            thiz->nativePeer = other;
        ');
        
        nativePeerOwner = false;
        super();
    }

    override public function loadView() {
        trace("Load View");
    }
}

class Ctrl2 extends UIViewController {
    public function new() {
        super();
    }
    
    override public function loadView() {
        trace("Load View Ctrl2");
    }

    override function viewDidLoad() {
        trace("View loaded");
    }
}

class View extends UIView {

}

class Main extends UIApplicationDelegate {

    override function didFinishLaunchingWithOptions() {
        var bounds = UIScreen.mainScreen().bounds;
        var window = UIWindow.alloc().initWithFrame(bounds);
        var ctrl = new Ctrl2();
        ctrl.init();
        window.rootViewController = ctrl;
        window.makeKeyAndVisible();

        var view = new UIView();
        view.initWithFrame(bounds);

        trace('bounds: ${bounds.size.width}x${bounds.size.height}');
    }

    public static function main() {
        UIApplication.start(new Main());
    }
}

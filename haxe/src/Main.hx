package;

import cpp.objc.Protocol;
import digiplay.Game;
import native.objc.*;


class Main {

    public static function main() {
        trace("Started");
    }
}
/*
class Controller implements _UIViewController {

    public function new() {
        
    }

    public function loadView():Void {
        trace("Load View");
    }
}

class MyView extends UIView {

    public function new() {
        super();
        initWithFrame(UIScreen.mainScreen().bounds);
        trace("View Created...");
    }
}
/*
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


class Main extends UIApplicationDelegate {

    static var uiController:Protocol<_UIViewController>;

    override function didFinishLaunchingWithOptions() {
        var bounds = UIScreen.mainScreen().bounds;
        var window = UIWindow.alloc().initWithFrame(bounds);
        var ctrl = new Controller();
        uiController = ctrl;
        //ctrl.init();
        window.rootViewController = uiController;
        window.makeKeyAndVisible();

        var view = new UIView();
        view.initWithFrame(bounds);
        var sel = OBJC.selector("deneme");
        trace('bounds: ${bounds.size.width}x${bounds.size.height}');
    }

    public static function main() {
        UIApplication.start(new Main());
    }
}*/



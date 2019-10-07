package;

import apple.uikit.UIApplicationDelegate;
import digiplay.platform.ios.UIView;

@:objc
class MyView extends UIView {
    override function layoutSubviews() {
        trace("Layout");
    }
}

class Main extends UIApplicationDelegate {

    public static function main() {
        var main = new Main();
        main.run();
    }

    override function didFinishLaunchingWithOptions() {
        trace("App started in haxe!!");
    }
}
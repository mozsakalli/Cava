package;

import apple.uikit.UIApplicationDelegate;

class Main extends UIApplicationDelegate {

    public static function main() {
        var main = new Main();
        main.run();
    }

    override function didFinishLaunchingWithOptions() {
        trace("App started in haxe!!");
    }
}
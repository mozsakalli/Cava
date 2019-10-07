package;

import cpp.objc.*;
import digiplay.native.*;

@:objc
class AppDelegate implements UIApplicationDelegate {

    public function didFinishLaunchingWithOptions(app:cpp.Pointer<UIApplication>, options:NSDictionary):Bool {
        return true;
    }

}

class Main {

    public static function main() {
        UIApplication.main(0, null, null, null);
        Sys.println("Hello World!/2");
    }
}
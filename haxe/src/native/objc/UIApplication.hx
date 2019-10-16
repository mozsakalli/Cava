package native.objc;


import digiplay.Game;

@:cppFileCode('
#import <UIKit/UIKit.h>
#include <digiplay/Game.h>
@interface DigiplayAppDelegate : NSObject<UIApplicationDelegate>
@end

@implementation DigiplayAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ::native::objc::UIApplication_obj::delegate->didFinishLaunchingWithOptions();
    return YES;
}

@end

extern "C" void __hxcpp_lib_main();
int main(int argc, char * argv[]) {
    __hxcpp_lib_main();
    @autoreleasepool {
        UIApplicationMain(argc, argv, nil, @"DigiplayAppDelegate");
    }
}
')
class UIApplication {

    static var delegate:UIApplicationDelegate;

    public static function start(delegate:UIApplicationDelegate) {
        UIApplication.delegate = delegate;
    }
}
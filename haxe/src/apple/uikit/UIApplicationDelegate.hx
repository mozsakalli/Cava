package apple.uikit;

import cpp.objc.NSDictionary;

@:cppFileCode('
#include <UIKit/UIKit.h>
@interface MainUIAppDelegate : NSObject<UIApplicationDelegate> 
@end

@implementation MainUIAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	::apple::uikit::UIApplicationDelegate_obj::currentDelegate->didFinishLaunchingWithOptions();
	return YES;
}
@end
')
class UIApplicationDelegate {
	//keep not collected by gc
	static var currentDelegate:UIApplicationDelegate;

	public function new() currentDelegate = this;
	public function run() {
		untyped __cpp__('
		@autoreleasepool {
        UIApplicationMain(0, nil, nil, @"MainUIAppDelegate");
    	}			
		');
	}
	public function didFinishLaunchingWithOptions():Void {}

}

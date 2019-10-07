#if ios
package digiplay.platform.ios;

@:cppFileCode('
#include <UIKit/UIKit.h>
@interface MainUIAppDelegate : NSObject<UIApplicationDelegate> 
@end

@implementation MainUIAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	::digiplay::platform::ios::DigiplayMain_obj::singleton->didFinishLaunchingWithOptions();
	return YES;
}
@end
')
class DigiplayMain {

    static var singleton:DigiplayMain;

    public function new() singleton = this;

    public function didFinishLaunchingWithOptions() {}
}

#end

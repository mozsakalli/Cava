//
//  main.m
//  test
//
//  Created by Mustafa Özsakallı on 7.10.2019.
//  Copyright © 2019 Mustafa Özsakallı. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Metal/Metal.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

extern "C" void __hxcpp_lib_main();
extern "C" void __digiplay_didFinishLaunching();
extern "C" void __digiplay_Update();
extern "C" void __digiplay_notify_haxe(const char* name, void* data);
extern "C" void __digiplay_notify_native(const char* name, void* data);

static BOOL HasMetalSupport = NO;
static float ScreenScaleFactor = 1;
static CGSize ScreenSize;
static CGPoint SafeScreenTopLeft;
static CGPoint SafeScreenBottomRight;
static BOOL IsTouching;
static CGPoint TouchPosition;

@interface DigiplayView : UIView
@end

@implementation DigiplayView {
    //OpenGL fields
    EAGLContext* eaglContext;
    int framebuffer, colorbuffer, depthbuffer;
    
    
    CADisplayLink* displayLink;
}

+(Class)layerClass {
    Class cls = NSClassFromString(@"CAMetalLayer");
    if(cls) {
        id <MTLDevice> device = MTLCreateSystemDefaultDevice();
        if(device) {
            NSLog(@"Metal support detected");
            HasMetalSupport = YES;
            return cls;
        }
    }
    return [CAEAGLLayer class];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        framebuffer = -1;
        if([self respondsToSelector:NSSelectorFromString(@"")])
            ScreenScaleFactor = self.contentScaleFactor;
        else
            ScreenScaleFactor = 1;
        
        if(!HasMetalSupport)
            [self initOpenGL];
        else
            [self initMetal];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if(!HasMetalSupport) {
        if(framebuffer == -1)
            [self createOpenGLBuffers];
    }
    
    if([self respondsToSelector:NSSelectorFromString(@"safeAreaInsets")]) {
        UIEdgeInsets i = self.safeAreaInsets;
        SafeScreenTopLeft = CGPointMake(i.left, i.top);
        SafeScreenBottomRight = CGPointMake(i.right, i.bottom);
    } else {
        SafeScreenTopLeft = CGPointMake(0,0);
        SafeScreenBottomRight = CGPointMake(0,0);
    }
}

- (void)didMoveToWindow {
    if(self.window && !HasMetalSupport && framebuffer == -1)
        [self createOpenGLBuffers];
}

-(void) startAnimation {
    if(!displayLink) {
        displayLink=[NSClassFromString(@"CADisplayLink") displayLinkWithTarget:self selector:@selector(updateTimerFired)];
        [displayLink setFrameInterval:1];
        [displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    }
}

-(void) updateTimerFired {
    NSLog(@"Update");
}

-(void) present {
    if([EAGLContext currentContext] != eaglContext)
        [EAGLContext setCurrentContext:eaglContext];
    glBindRenderbuffer(GL_RENDERBUFFER, colorbuffer);
    [eaglContext presentRenderbuffer:GL_RENDERBUFFER];
}

-(void) initOpenGL {
    CAEAGLLayer* layer = (CAEAGLLayer*)self.layer;
    layer.opaque = true;
    layer.drawableProperties = @{
        kEAGLDrawablePropertyRetainedBacking:@(NO),
        kEAGLDrawablePropertyColorFormat:kEAGLColorFormatRGBA8
    };
    eaglContext = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    if([EAGLContext currentContext] != eaglContext)
        [EAGLContext setCurrentContext:eaglContext];
}

-(void) createOpenGLBuffers {
    if([EAGLContext currentContext] != eaglContext)
        [EAGLContext setCurrentContext:eaglContext];

    ScreenSize.width = (int)(self.layer.bounds.size.width * ScreenScaleFactor);
    ScreenSize.height = (int)(self.layer.bounds.size.height * ScreenScaleFactor);
    
    
    glGenFramebuffers(1, (GLuint*)&framebuffer);
    glBindFramebuffer(GL_FRAMEBUFFER, framebuffer);

    // Create our Depth buffer. Color buffer must be the last one bound
    glGenRenderbuffers(1, (GLuint*)&depthbuffer);
    glBindRenderbuffer(GL_RENDERBUFFER, depthbuffer);
    
    int internalFormat = GL_DEPTH24_STENCIL8_OES;
    glRenderbufferStorage(GL_RENDERBUFFER, internalFormat, ScreenSize.width, ScreenSize.height);
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, depthbuffer);
    if (internalFormat == GL_DEPTH24_STENCIL8_OES)
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_RENDERBUFFER, depthbuffer);

    glGenRenderbuffers(1, (GLuint*)&colorbuffer);
    glBindRenderbuffer(GL_RENDERBUFFER, colorbuffer);

    // TODO: EAGLContext.RenderBufferStorage returns false
    //       on all but the first call.  Nevertheless, it
    //       works.  Still, it would be nice to know why it
    //       claims to have failed.
    [eaglContext renderbufferStorage:GL_RENDERBUFFER fromDrawable:(CAEAGLLayer*)self.layer];
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_RENDERBUFFER, colorbuffer);

    int status = glCheckFramebufferStatus(GL_FRAMEBUFFER);
    if (status != GL_FRAMEBUFFER_COMPLETE) {
        NSLog(@"OpenGL FrameBuffer could not initialized");
    }
}

-(void) initMetal {
#ifndef TARGET_OS_SIMULATOR
    //todo
    CAMetalLayer* layer = (CAMetalLayer*)self.layer;
#endif
}

@end

///////////////////////////
//DigiplayWindow
//////////////////////////
@interface DigiplayWindow : UIWindow
@end

@implementation DigiplayWindow

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *touchArr = [touches allObjects];
    UITouch *aTouch = [touchArr objectAtIndex:0];
    IsTouching = YES;
    TouchPosition = [aTouch locationInView:aTouch.view];
    TouchPosition.x *= ScreenScaleFactor;
    TouchPosition.y *= ScreenScaleFactor;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *touchArr = [touches allObjects];
    UITouch *aTouch = [touchArr objectAtIndex:0];
    IsTouching = NO;
    TouchPosition = [aTouch locationInView:aTouch.view];
    TouchPosition.x *= ScreenScaleFactor;
    TouchPosition.y *= ScreenScaleFactor;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *touchArr = [touches allObjects];
    UITouch *aTouch = [touchArr objectAtIndex:0];
    IsTouching = YES;
    TouchPosition = [aTouch locationInView:aTouch.view];
    TouchPosition.x *= ScreenScaleFactor;
    TouchPosition.y *= ScreenScaleFactor;
}
@end

///////////////////////////
//DigiplayViewController
//////////////////////////
@interface DigiplayViewController : UIViewController
@end

@implementation DigiplayViewController

- (void)loadView {
    self.view = [[DigiplayView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view.clearsContextBeforeDrawing = false;
}

- (void)viewDidLoad {
    [(DigiplayView*)self.view startAnimation];
    if (@available(iOS 11.0, *)) {
        [self setNeedsUpdateOfHomeIndicatorAutoHidden];
    }
}
@end

@interface DigiplayAppDelegate : NSObject<UIApplicationDelegate>
@end

@implementation DigiplayAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    __digiplay_notify_haxe("app:launching", NULL);
    
    UIWindow* window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    window.rootViewController = [[DigiplayViewController alloc] init];
    
    [window makeKeyAndVisible];
    
    __digiplay_notify_haxe("app:launched", NULL);
    return YES;
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    __digiplay_notify_haxe("app:background", NULL);
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    __digiplay_notify_haxe("app:foreground", NULL);
}
@end

int main(int argc, char * argv[]) {
    __hxcpp_lib_main();
    @autoreleasepool {
        UIApplicationMain(argc, argv, nil, @"DigiplayAppDelegate");
    }
}


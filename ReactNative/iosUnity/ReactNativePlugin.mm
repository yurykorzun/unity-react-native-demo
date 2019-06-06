#import <React/RCTBridge.h>
#import <React/RCTRootView.h>
#import <React/RCTEventEmitter.h>
#import <Foundation/Foundation.h>
#import "ReactNativeViewController.h"

extern "C" {
    void _ReactNativePlugin_OpenReactNativeView()
    {
        double delayInSeconds = 0.1;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            UnityPause(true);
            
            NSURL* jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
            
            RCTBridge *bridge = [[RCTBridge alloc] initWithBundleURL:jsCodeLocation
                                                      moduleProvider:nil
                                                       launchOptions:nil];
            
            ReactNativeViewController *reactNativeViewController = [[ReactNativeViewController alloc]init];
            
            RCTRootView *reactRootView = [[RCTRootView alloc] initWithBridge:bridge
                                                                  moduleName:@"UnityReactNative"
                                                           initialProperties:nil];
            reactRootView.reactViewController = reactNativeViewController;
            reactNativeViewController.view = reactRootView;
            
            UIWindow *mainWindow = UnityGetMainWindow();
            UIView *mainView = UnityGetGLView();
            UIViewController *mainViewController = UnityGetGLViewController();
            
            reactRootView.frame = mainWindow.frame;
            reactRootView.bounds = mainWindow.bounds;
            
            mainWindow.rootViewController = reactNativeViewController;
            
            [mainWindow addSubview:reactRootView];
            [mainWindow bringSubviewToFront:reactRootView];
        });
    }
}

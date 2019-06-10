#import <React/RCTRootView.h>
#import <React/RCTBridge.h>

#import "ReactNativeViewController.h"

@implementation ReactNativeViewController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (BOOL)shouldAutorotate {
    return NO;
}

@end

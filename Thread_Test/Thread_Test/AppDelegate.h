//
//  AppDelegate.h
//  Thread_Test
//
//  Created by kada on 13-6-20.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate,UITabBarDelegate,UINavigationBarDelegate,UINavigationControllerDelegate>
{
    
    UINavigationController *navigationcontroller;
    
}
@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationcontroller;@end

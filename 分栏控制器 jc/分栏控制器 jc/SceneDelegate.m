//
//  SceneDelegate.m
//  分栏控制器 jc
//
//  Created by 仲雯 on 2020/7/15.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    _window = [[UIWindow alloc] initWithWindowScene:scene];
    
    [_window makeKeyAndVisible];
    
    VCFirst* vcFirst = [[VCFirst alloc] init];
    
    
    VCSecond* vcSecond = [[VCSecond alloc] init];
    vcSecond.view.backgroundColor = [UIColor blueColor];
    
    VCThird* vcThird = [[VCThird alloc] init];
    vcThird.view.backgroundColor = [UIColor orangeColor];
    
    vcFirst.title = @"First";
    vcSecond.title = @"Second";
    vcThird.title = @"Third";
    
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    vcFirst.view.backgroundColor = [UIColor redColor];
    
    //创建控制器对象
    //将所有要被分栏控制器管理的对象添加到数组中
    NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst, vcSecond, vcThird, nil];
    
    //将分栏控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    _window.rootViewController = tbController;
    
    //设置选中视图控制器的索引
    //通过索引来确定显示哪个控制器
    tbController.selectedIndex = 1;
    
    if (tbController.selectedViewController == vcSecond) {
        NSLog(@"true!");
    }
    
    //分栏控制器的透明度
    tbController.tabBar.translucent = NO;

}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end

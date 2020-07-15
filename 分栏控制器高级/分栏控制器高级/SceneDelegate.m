//
//  SceneDelegate.m
//  分栏控制器高级
//
//  Created by 仲雯 on 2020/7/15.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCsix.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    _window = [[UIWindow alloc] initWithWindowScene:scene];
    
    [_window makeKeyAndVisible];
    
    VCFirst* vc01 = [[VCFirst alloc] init];
    VCSecond* vc02 = [[VCSecond alloc] init];
    VCThird* vc03 = [[VCThird alloc] init];
    VCFour* vc04 = [[VCFour alloc] init];
    VCFive* vc05 = [[VCFive alloc] init];
    VCsix* vc06 = [[VCsix alloc] init];
    
    vc01.view.backgroundColor = [UIColor redColor];
    vc02.view.backgroundColor = [UIColor yellowColor];
    vc03.view.backgroundColor = [UIColor whiteColor];
    vc04.view.backgroundColor = [UIColor grayColor];
    vc05.view.backgroundColor = [UIColor blueColor];
    vc06.view.backgroundColor = [UIColor blackColor];
    
    vc01.title = @"001";
    vc02.title = @"002";
    vc03.title = @"003";
    vc04.title = @"004";
    vc05.title = @"005";
    vc06.title = @"006";
    
    NSArray* arrayVC = [NSArray arrayWithObjects:vc01, vc02, vc03, vc04, vc05, vc06, nil];
    
    UITabBarController* tbc = [[UITabBarController alloc] init];
    tbc.viewControllers = arrayVC;

    _window.rootViewController = tbc;
    
    //改变工具栏颜色
    tbc.tabBar.barTintColor = [UIColor whiteColor];
    //改变按钮风格颜色
    tbc.tabBar.tintColor = [UIColor blueColor];
    
    tbc.delegate = self;
    
    
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
}

//开始编辑前调用
-(void) tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers{
    
    NSLog(@"编辑前");
    
}
-(void) tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    NSLog(@"即将结束前");

}

-(void) tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    
    NSLog(@"已经结束编辑");

}

-(void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(nonnull UIViewController *)viewController{
    
    NSLog(@"选中控制对象");
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

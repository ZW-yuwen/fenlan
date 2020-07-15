//
//  VCFirst.m
//  分栏控制器 jc
//
//  Created by 仲雯 on 2020/7/15.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //创建分栏按钮对象
    //1.文字 2.显示的图标 3.设置按钮的tag
    //方法一：
//    UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"111" image:nil tag:101];
    
  //  self.tabBarItem = tabBarItem;
    
    //方法二：
    //根据系统风格创建分栏按钮
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:101];
    
    //按钮右上角的提示信息
    //用来提示未读消息
    tabBarItem.badgeValue = @"1";
    
    self.tabBarItem = tabBarItem;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

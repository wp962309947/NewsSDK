//
//  TestViewController.m
//  YLNewsSDKDemo
//
//  Created by Apple on 2020/12/8.
//  Copyright © 2020 com.qujie.tech. All rights reserved.
//

#import "TestViewController.h"
#import <YLInfoFlowSDK/YLInfoFlowSDK.h>

#define YLNAVBAR_H ([[UIApplication sharedApplication] statusBarFrame].size.height + 44)
@interface TestViewController ()
@property (nonatomic ,strong)YLNewsSDK *yl_newssdk;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"导航";
    self.navigationItem.title = @"导航";
//    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:self];
//    [self.navigationController pushViewController:self animated:YES];
    
    
    
    [YLNewsSDKModeManager shareManager].isHoverMode = NO;
    [YLNewsSDKModeManager shareManager].isHaveTabbar = NO;
    [YLNewsSDKModeManager shareManager].isHaveNav = YES;
    [YLNewsSDKModeManager shareManager].isNeedRefreashButton = YES;
    [YLNewsSDKModeManager shareManager].host_theme_color = @"0000FF";//动态修改主题色
    [YLNewsSDKModeManager shareManager].host_cus_navbar_height = @(YLNAVBAR_H);
    self.yl_newssdk = [[YLNewsSDK alloc]initWithAppid:@"7c8b8eae081d36cb"
                andApikey:@"7030160a7c2e2bfefcab1d23eaf3641d"
               andTabType:YLNewsType
             andLocalCity:@"上海"
    andHostViewController:self];
    
    //测试
//    self.yl_newssdk = [[YLNewsSDK alloc]initWithAppid:@"ec6cf846cb1e96c4"
//                andApikey:@"3d74eedb9161f4c4f39731bf9d786c72"
//               andTabType:YLNewsType
//             andLocalCity:@"上海"
//    andHostViewController:self];
    
    [self.yl_newssdk loadData];
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

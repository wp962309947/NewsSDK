//
//  ViewController.m
//  YLNewsSDKDemo
//
//  Created by Apple on 2020/6/12.
//  Copyright © 2020 com.qujie.tech. All rights reserved.
//

#import "ViewController.h"
#import <YLInfoFlowSDK/YLInfoFlowSDK.h>
#import "TestViewController.h"

@interface ViewController ()

@property (nonatomic ,strong)YLNewsSDK *yl_newssdk;

@end

@implementation ViewController

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
    [YLNewsSDKModeManager shareManager].host_cus_navbar_height = @50;
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
    __weak typeof(self) weakSelf = self;
    self.yl_newssdk.shareBlock = ^(NSDictionary *shareSourceDic) {
        NSLog(@"接收到分享内容 == %@",shareSourceDic);
        //        UIViewController *avc = [[UIViewController alloc]init];
        //        [self presentViewController:avc animated:YES completion:nil];
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert"
                                                                       message:@"This is an alert."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK"
                                                                style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
            
        }];
        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction * action) {}];
        [alert addAction:cancelAction];
        [alert addAction:defaultAction];
        [weakSelf presentViewController:alert animated:YES completion:nil];
    };
    
    
    self.yl_newssdk.newsListScrollToTopBlock = ^(NSDictionary *scrollToTopDic) {
        //通知
        [[NSNotificationCenter defaultCenter] postNotificationName:@"yl_news_list_can_scroll" object:nil];
    };
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
    [self.navigationController pushViewController:[[TestViewController alloc]init] animated:YES];
}

@end

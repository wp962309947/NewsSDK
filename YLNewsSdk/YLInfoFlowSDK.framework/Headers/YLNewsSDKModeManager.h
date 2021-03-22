//
//  YLNewsSDKModeManager.h
//  YLInfoFlowSDK
//
//  Created by Apple on 2020/6/23.
//  Copyright © 2020 com.qujie.tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YLNewsSDKModeManager : NSObject

+ (instancetype)shareManager;

///是否是悬停效果 默认为NO
@property (assign,nonatomic)BOOL isHoverMode;

///是否有导航栏 默认为NO
@property (assign,nonatomic)BOOL isHaveNav;

///宿主自定义导航栏高度
@property (assign,nonatomic)NSNumber * host_cus_navbar_height;

///是否有tabbar 默认为NO
@property (assign,nonatomic)BOOL isHaveTabbar;

///是否需要刷新按钮 默认为NO
@property (assign,nonatomic)BOOL isNeedRefreashButton;

///微信分享appid
@property (copy,nonatomic)NSString * WXShareAPPID;
///qq分享appid
@property (copy,nonatomic)NSString * QQShareAPPID;

///不支持微信分享 默认支持
@property (assign,nonatomic)BOOL NotSupportWXShare;
///不支持qq分享 默认支持
@property (assign,nonatomic)BOOL NOtSupportQQShare;

/// 滚动视图回调（供宿主判断是否可滚动）
/// @param scrollview 回调的滚动视图
@property (nonatomic, copy) void(^scrollviewBlock)(UIScrollView *scrollview);


/// 无网络占位回调（供宿主使用是否可滚动）
/// @param noNetDic 回调的数据
@property (nonatomic, copy) void(^noNetBlock)(NSDictionary *noNetDic);

@property (nonatomic,copy)NSString *host_theme_color;

/// 新闻/视频展示等数据回调给宿主供埋点
/// @param sdk_newsDataBuryDic 回调数据
@property (nonatomic, copy) void(^sdk_newsDataBuryBlock)(NSDictionary *sdk_newsDataBuryDic);




/// 广告数据回调给宿主供埋点
/// @param sdk_adBuryDic 回调的广告埋点数据
@property (nonatomic, copy) void(^sdk_ADBuryBlock)(NSDictionary *sdk_adBuryDic);





@end

NS_ASSUME_NONNULL_END

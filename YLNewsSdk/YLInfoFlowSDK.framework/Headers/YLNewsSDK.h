//
//  YLNewsSDK.h
//  YLInfoFlowSDK
//
//  Created by Apple on 2020/5/25.
//  Copyright © 2020 com.qujie.tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger{
    YLNewsType = 0,///新闻类型
    YLVideoType    ///视频类型
} YLIFTabType;

@interface YLNewsSDK : NSObject


/// 入口方法
/// @param appid appid
/// @param apikey apikey
/// @param tabType 信息流类型（新闻：YLNewsType；视频：YLVideoType）
/// @param city 当前城市：尽量不要为nil
/// @param hostVC 宿主控制器
- (instancetype)initWithAppid:(NSString *)appid
                    andApikey:(NSString *)apikey
                   andTabType:(YLIFTabType)tabType
                 andLocalCity:(NSString *)city
        andHostViewController:(UIViewController *)hostVC;

/// 加载信息流
- (void)loadData;

/// 信息流滚动到顶部回调
/// 供宿主判断是否悬停及是否可以滚动
@property (nonatomic, copy) void(^newsListScrollToTopBlock)(NSDictionary *scrollToTopDic);

/// 分享回调
/// @param shareSourceDic 回调的分享资源
/// shareSourceDic 参数解释: 均为字符串类型
/// @"ShareChannel"  分享渠道 QQ:qq好友 QQZone:qq空间  wechatTimeline:微信朋友圈  wechat:微信好友
/// @"ShareNewsUrl"  分享主链接
/// @"ShareNewsTitle" 分享内容标题
/// @"ShareNewsAbstract"  分享内容简述
/// @"ShareNewsImageUrl" 分享封面图片
/// @"ShareNewsType"  分享类型：@"VIDEO"  @"NEWS"
@property (nonatomic, copy) void(^shareBlock)(NSDictionary *shareSourceDic);

@end


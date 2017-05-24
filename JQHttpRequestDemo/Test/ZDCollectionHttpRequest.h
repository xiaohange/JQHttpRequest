//
//  ZDCollectionHttpRequest.h
//  JQHttpRequest
//
//  Created by 韩俊强 on 2017/5/17.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import "JQBaseRequest.h"

@interface ZDCollectionHttpRequest : JQBaseRequest

/**
 获取收藏列表

 @param successBlock successBlock description
 @param failureBlock failureBlock description
 */
+ (void)getDouBanListSuccessed:(JQResponseSuccess)successBlock failed:(JQResponseFail)failureBlock;

@end

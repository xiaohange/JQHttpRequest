//
//  ZDCollectionHttpRequest.m
//  JQHttpRequest
//
//  Created by 韩俊强 on 2017/5/17.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import "ZDCollectionHttpRequest.h"
#import <SVProgressHUD.h>
#import "API.pch"

@implementation ZDCollectionHttpRequest

+ (void)getDouBanListSuccessed:(JQResponseSuccess)successBlock failed:(JQResponseFail)failureBlock
{
    //// get请求数据设置缓存类型 与缓存时间
    [[JQBaseRequest sharedManager].setRequest(COLLECTION_LIST).RequestType(JQRequestMethodGET).Cachetype(JQBaseRequestReloadIgnoringLocalCacheData).cerName(nil).timeoutInterval(30).CachTime(60).Parameters(nil) startRequestWithSuccess:^(NSURLSessionDataTask *task, id responseObject) {
       
        successBlock(nil,responseObject);
        
    } progress:^(NSProgress *progress) {
        
     /* progress:^(NSProgress *progress)  不能为nil，因为AFN的默认参数是 _Nonnull 修饰的！*/
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
        failureBlock(nil,error);
    }];
}

@end

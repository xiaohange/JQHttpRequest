//
//  ViewController.m
//  JQHttpRequestDemo
//
//  Created by 韩俊强 on 2017/5/23.
//  Copyright © 2017年 HaRi. All rights reserved.
//
//  QT:
//  http://blog.csdn.net/qq_31810357
//  http://weibo.com/hanjunqiang
//  * iOS开发者交流群：446310206

/* 使用方法：
 * 1.直接在需要的地方调用;
 * 2.需要抽层的可以看Test文件;
 * 3.目前二次封装网络库支持四种请求：GET、POST、PUT、DELETE较常见的请求，HEAD/PATH/COPY/OPTIONS/LINK/LOCK等不常用的后续会根据需求调整,本库支持数据缓存、缓存超时设置、请求超时设置等;
 * 4.支持cer证书验证,cerName找不到则crash,所以正确将证书拖进工程,不易乱填;
 */

#import "ViewController.h"
#import "ZDCollectionHttpRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    //Test
    [[JQBaseRequest sharedManager].setRequest(COLLECTION_LIST).RequestType(JQRequestMethodGET).Cachetype(JQBaseRequestReloadIgnoringLocalCacheData).cerName(nil).timeoutInterval(30).CachTime(60).Parameters(nil) startRequestWithSuccess:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } progress:^(NSProgress *progress) {
        
    /* progress:^(NSProgress *progress)  不能为nil，因为AFN的默认参数是 _Nonnull 修饰的！*/
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
    
    /*
    //GET
    [ZDCollectionHttpRequest getDouBanListSuccessed:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } failed:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
    */
    
    // 在这里除了.setRequest(url)和startRequestWithSuccess failure方法,其他都是不必要的,你可以这样:
    
    [[JQBaseRequest sharedManager].setRequest(COLLECTION_LIST).HTTPHeader(@{@"hahah":@"nihao"}) startRequestWithSuccess:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } progress:^(NSProgress *progress) {
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
       
    }];
    
    ///POST... 等等不做举例;
    
    // 取消所有请求, 不会关闭session
//    [[JQBaseRequest sharedManager].tasks makeObjectsPerformSelector:@selector(cancel)];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

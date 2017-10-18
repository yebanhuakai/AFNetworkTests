//
//  ViewController.m
//  AFNetworkTest
//
//  Created by Shenry on 2017/10/18.
//  Copyright © 2017年 Shenry. All rights reserved.
//

#import "ViewController.h"
//#import "AFNetworkReachabilityManager.h"
//#import "VTMagic.h"
#import "AFHTTPSessionManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//
//    [[NSNotificationCenter defaultCenter] addObserverForName:AFNetworkingReachabilityDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
//        NSDictionary *dic = note.userInfo;
//
//        NSLog(@"%@", dic);
//    }];
//
//    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        NSLog(@"⭐️%ld", (long)status);
//
//        BOOL isWifi = [[AFNetworkReachabilityManager manager] isReachable];
//
//        NSLog(@"%@", isWifi ? @"Yes" : @"NO");
//    }];
//
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    btn.backgroundColor = [UIColor blueColor];
//    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
    
    [self getNews];
}

- (void)getNews {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSDictionary *dict = nil;
    
    NSString *urlStr = @"https://mapp.jrj.com.cn/json/news/getListNews?date=0&size=3&d=b";
//    NSURL *url = [[NSURL alloc] initWithString:urlStr];
    
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    
    [manager GET:urlStr parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //
        NSDictionary *dic = responseObject;
        NSLog(@"%@", dic);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //
        NSLog(@"%@", error);
    }];
    
    
}

//- (void)btnClick {
//    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
//
//    NSLog(@"%@", manager.localizedNetworkReachabilityStatusString);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

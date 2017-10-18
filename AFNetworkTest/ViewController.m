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
#import "SHY_HttpRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self requestNews];
}

- (void)requestNews {
    
    NSString *urlStr = @"https://mapp.jrj.com.cn/json/news/getListNews?date=0&size=3&d=b";

    [SHY_HttpRequest requestGetWithUrl:urlStr parameters:nil success:^(id responseObject) {
        //
        NSDictionary *dic = responseObject;
        NSLog(@"%@", dic);
    } failure:^(NSError *error) {
        //
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

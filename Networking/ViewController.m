//
//  ViewController.m
//  Networking
//
//  Created by ZLY on 16/5/13.
//  Copyright © 2016年 ZLY. All rights reserved.
//

#import "ViewController.h"
#import "ZLYNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //发送网络请求
    [ZLYNetworking postWithUrl:@"http://dev2.lezu360.cn/app/searchHouse" refreshCache:NO params:@{@"clientType":@"2",@"version":@"1.0.1"} success:^(id response) {
        ZLYLog(@"请求成功%@",response);
    } fail:^(NSError *error) {
        ZLYLog(@"%@",error);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

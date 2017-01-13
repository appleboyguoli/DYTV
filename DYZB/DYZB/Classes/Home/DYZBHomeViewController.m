//
//  DYZBHomeViewController.m
//  DYZB
//
//  Created by Apple's Mac on 2017/1/12.
//  Copyright © 2017年 Apple's Mac. All rights reserved.
//
#import "UIBarButtonItem+DYZB.h"
#import "DYZBHomeViewController.h"

@interface DYZBHomeViewController ()

@end

@implementation DYZBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavigationBar];
}


#pragma mark ---------------配置导航栏-----------------------
- (void)setupNavigationBar
{
    [self setupNavigationLeftBar];
    [self setupNavigationRightBar];
}


- (void)setupNavigationLeftBar
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImageName:@"logo" highImageName:nil size:CGSizeMake(66, 26) target:self action:@selector(leftItemClick)];
}


- (void)setupNavigationRightBar
{
    CGSize size = CGSizeMake(40, 40);
    
    UIBarButtonItem *historyItem = [[UIBarButtonItem alloc] initWithImageName:@"image_my_history" highImageName:@"image_my_history_click" size:size target:self action:@selector(historyItemClick)];
    UIBarButtonItem *searchItem = [[UIBarButtonItem alloc] initWithImageName:@"btn_search" highImageName:@"btn_search_click" size:size target:self action:@selector(searchItemClick)];
    UIBarButtonItem *qrCodeItem = [[UIBarButtonItem alloc] initWithImageName:@"image_scan" highImageName:@"image_scan_click" size:size target:self action:@selector(qrCodeItemClick)];
    
    self.navigationItem.rightBarButtonItems = @[qrCodeItem,historyItem,searchItem];
}

- (void)leftItemClick
{
    NSLog(@"%s",__FUNCTION__);
}


- (void)historyItemClick
{
    NSLog(@"%s",__FUNCTION__);
}


- (void)searchItemClick
{
    NSLog(@"%s",__FUNCTION__);
}


- (void)qrCodeItemClick
{
    NSLog(@"%s",__FUNCTION__);
}


@end

//
//  QLTieBaViewController.m
//  Project
//
//  Created by 计恩良 on 2018/5/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLTieBaViewController.h"
@interface QLTieBaViewController ()
@end

@implementation QLTieBaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.leftItemList = [NSArray array];
    [self setControllerTitle];
}

- (void)setControllerTitle {
    self.navBar.title = @"浪吧";
}
@end

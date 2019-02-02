//
//  QLFaTieViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2019/2/3.
//  Copyright © 2019年 计恩良. All rights reserved.
//

#import "QLFaTieViewController.h"

@implementation QLFaTieViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.title = [NSString stringWithFormat:@"发帖-%@",[WTUtil strRelay:self.categoryInfo[@"name"]]];
}

@end

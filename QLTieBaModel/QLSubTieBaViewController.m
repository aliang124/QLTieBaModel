//
//  QLSubTieBaViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/6.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLSubTieBaViewController.h"

@implementation QLSubTieBaViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.hidden = YES;
    self.formManager[@"WTIconTextItem"] = @"WTIconTextCell";
    [self initForm];
}

- (void)initForm {
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    
    [self.formTable reloadData];
}

@end

//
//  QLMerchantListViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/7.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLMerchantListViewController.h"
#import "WTBaseCore.h"
#import "QLBusiness.h"
@implementation QLMerchantListViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.title = @"商家列表";
    
    self.formTable.top = 44 + WT_NavBar_Height;
    self.formTable.height = WTScreenHeight-WT_NavBar_Height-44-WT_TabBar_Height;
    
    [self initForm];
}

- (void)initForm {
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    for (int i = 0; i < 210; i++) {
    }
    
    WTEmptyItem *itE = [[WTEmptyItem alloc] init];
    itE.cellHeight = 8;
    itE.bgColor = WT_Color_ViewBackGround;
    [section0 addItem:itE];
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    
    [self.formTable reloadData];
}
@end

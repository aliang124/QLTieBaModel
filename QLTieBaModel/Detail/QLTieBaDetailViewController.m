//
//  QLTieBaDetailViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/31.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLTieBaDetailViewController.h"
#import "QLTieBaTitleCell.h"
#import "QLTieBaUserInfoCell.h"
#import "QLTieBaShopCell.h"
@interface QLTieBaDetailViewController ()

@end

@implementation QLTieBaDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.formManager[@"QLTieBaTitleItem"] = @"QLTieBaTitleCell";
    self.formManager[@"QLTieBaUserInfoItem"] = @"QLTieBaUserInfoCell";
    self.formManager[@"QLTieBaShopItem"] = @"QLTieBaShopCell";
    [self initForm];
}

- (void)initForm {
    WT(bself);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    [section0 addItem:[WTEmptyItem initWithHeight:18]];
    //标题
    QLTieBaTitleItem *itTitle = [[QLTieBaTitleItem alloc] init];
    itTitle.titleText = @"这一家店超推荐的店铺所有的衣服都 是亲子搭配，简直就是宝妈们的福音啊！";
    [section0 addItem:itTitle];
    
    //用户信息区域
    QLTieBaUserInfoItem *itUserInfo = [[QLTieBaUserInfoItem alloc] init];
    [section0 addItem:itUserInfo];
    
    //店铺信息
    QLTieBaShopItem *itShop = [[QLTieBaShopItem alloc] init];
    itShop.shopNameText = @"韩式亲子装专卖店";
    [section0 addItem:itShop];
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    
    [self.formTable reloadData];
}
@end

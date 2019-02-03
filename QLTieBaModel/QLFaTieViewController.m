//
//  QLFaTieViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2019/2/3.
//  Copyright © 2019年 计恩良. All rights reserved.
//

#import "QLFaTieViewController.h"
#import "QLFaTieTitleCell.h"
#import "QLFaTieContentCell.h"
#import "QLFaTieCheckCell.h"
#import "QLFaTiePictureCell.h"
#import "QLFaTieMerchantCell.h"
@interface QLFaTieViewController ()
@property (nonatomic,strong) QLFaTieTitleItem *itTitle;
@property (nonatomic,strong) QLFaTieContentItem *itContent;
@property (nonatomic,strong) QLFaTieCheckItem *itCheck;
@property (nonatomic,strong) QLFaTiePictureItem *itPicture;
@property (nonatomic,strong) QLFaTieMerchantItem *itMerchant;
@end

@implementation QLFaTieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.title = [NSString stringWithFormat:@"发帖-%@",[WTUtil strRelay:self.categoryInfo[@"name"]]];
    self.view.backgroundColor = [UIColor whiteColor];
    self.formManager[@"QLFaTieTitleItem"] = @"QLFaTieTitleCell";
    self.formManager[@"QLFaTieContentItem"] = @"QLFaTieContentCell";
    self.formManager[@"QLFaTieCheckItem"] = @"QLFaTieCheckCell";
    self.formManager[@"QLFaTiePictureItem"] = @"QLFaTiePictureCell";
    self.formManager[@"QLFaTieMerchantItem"] = @"QLFaTieMerchantCell";
    [self initForm];
}

- (void)initForm {
    WT(weakSelf);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];

    [section0 addItem:[WTEmptyItem initWithHeight:16]];
    //输入标题
    self.itTitle = [[QLFaTieTitleItem alloc] init];
    [section0 addItem:self.itTitle];
    [section0 addItem:[WTEmptyItem initWithHeight:12]];
    //输入内容
    self.itContent = [[QLFaTieContentItem alloc] init];
    [section0 addItem:self.itContent];
    //是否匿名
    self.itCheck = [[QLFaTieCheckItem alloc] init];
    [section0 addItem:self.itCheck];
    //选择图片
    self.itPicture = [[QLFaTiePictureItem alloc] init];
    self.itPicture.weakController = self;
    [section0 addItem:_itPicture];
    //选择商家
    [section0 addItem:[WTEmptyItem initWithHeight:16]];
    self.itMerchant = [[QLFaTieMerchantItem alloc] init];
    [section0 addItem:self.itMerchant];
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    [self.formTable reloadData];
}

@end

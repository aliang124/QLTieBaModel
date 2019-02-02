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
@implementation QLFaTieViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.title = [NSString stringWithFormat:@"发帖-%@",[WTUtil strRelay:self.categoryInfo[@"name"]]];
    self.view.backgroundColor = [UIColor whiteColor];
    self.formManager[@"QLFaTieTitleItem"] = @"QLFaTieTitleCell";
    self.formManager[@"QLFaTieContentItem"] = @"QLFaTieContentCell";
    self.formManager[@"QLFaTieCheckItem"] = @"QLFaTieCheckCell";
    [self initForm];
}

- (void)initForm {
    WT(weakSelf);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];

    [section0 addItem:[WTEmptyItem initWithHeight:16]];
    //输入标题
    QLFaTieTitleItem *itTitle = [[QLFaTieTitleItem alloc] init];
    [section0 addItem:itTitle];
    
    [section0 addItem:[WTEmptyItem initWithHeight:12]];
    
    QLFaTieContentItem *itContent = [[QLFaTieContentItem alloc] init];
    [section0 addItem:itContent];

    QLFaTieCheckItem *itCheck = [[QLFaTieCheckItem alloc] init];
    [section0 addItem:itCheck];
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    [self.formTable reloadData];
}
@end

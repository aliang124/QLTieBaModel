//
//  QLCareViewController.m
//  Project
//
//  Created by 计恩良 on 2018/5/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLCareViewController.h"
#import "QLBusiness.h"
#import "QLCareListCell.h"
#import "QLCareHeadCell.h"
#import "QLCareTieZiCell.h"
#import "QLCareCornerCell.h"
#import "QLCareDescCell.h"
#import <CTMediator.h>

@interface QLCareViewController ()
@end

@implementation QLCareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.leftItemList = [NSArray array];
    self.navBar.title = @"关注";

    _barView = [[QLCareBarView alloc] initWithFrame:CGRectMake(0, WT_NavBar_Height, WTScreenWidth, 44)];
    _barView.backgroundColor = [UIColor whiteColor];
    [_barView addTarget:self action:@selector(btnPress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_barView];
    
    self.formTable.top = _barView.bottom;
    self.formTable.height = WTScreenHeight-_barView.bottom-WT_TabBar_Height;
    self.formManager[@"QLCareListItem"] = @"QLCareListCell";
    self.formManager[@"QLCareHeadItem"] = @"QLCareHeadCell";
    self.formManager[@"QLCareTieZiItem"] = @"QLCareTieZiCell";
    self.formManager[@"QLCareCornerItem"] = @"QLCareCornerCell";
    self.formManager[@"QLCareDescItem"] = @"QLCareDescCell";
    
    WTCustomBarItem *itSearchBar = [[WTCustomBarItem alloc] init];
    itSearchBar.itemStyle = 1;
    itSearchBar.imgSize = CGSizeMake(32, 32);
    itSearchBar.onClick = ^{
        UIViewController *vc = [[CTMediator sharedInstance] performTarget:@"QLHomeModel" action:@"searchVC" params:nil shouldCacheTarget:NO];
        [self.navigationController pushViewController:vc animated:YES];
    };
    itSearchBar.itemImage = [UIImage imageNamed:@"searchBar"];
    
    WTCustomBarItem *itMsgBar = [[WTCustomBarItem alloc] init];
    itMsgBar.itemStyle = 1;
    itMsgBar.imgSize = CGSizeMake(32, 32);
    itMsgBar.itemImage = [UIImage imageNamed:@"messageBar"];
    itMsgBar.onClick = ^{
        UIViewController *vc = [[CTMediator sharedInstance] performTarget:@"QLMineModel" action:@"messageVC" params:nil shouldCacheTarget:NO];
        [self.navigationController pushViewController:vc animated:YES];
    };
    self.navBar.rightItemList = [NSArray arrayWithObjects:itMsgBar,itSearchBar, nil];
    
    [self initForm];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    if (![[QLLoginInfo sharedInstance] isLogin]) {
//        UIViewController *vc = [[CTMediator sharedInstance] performTarget:@"QLLoginModel" action:@"loginVC" params:nil shouldCacheTarget:NO];
//        [self.navigationController presentViewController:[[UINavigationController alloc] initWithRootViewController:vc] animated:YES completion:nil];
//    }
}

- (void)initForm {
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    [section0 addItem:[WTEmptyItem initWithHeight:8]];

    for (int i = 0; i < 3; i++) {
        if (i==0) {
            QLCareListItem *it = [[QLCareListItem alloc] init];
            [section0 addItem:it];
        } else if (i==1) {
            QLCareHeadItem *itHead = [[QLCareHeadItem alloc] init];
            itHead.tipText = @"发布了新帖：";
            [section0 addItem:itHead];
            
            QLCareTieZiItem *itTieZi = [[QLCareTieZiItem alloc] init];
            [section0 addItem:itTieZi];
            
            QLCareCornerItem *itCorner = [[QLCareCornerItem alloc] init];
            itCorner.cellHeight = 12;
            [section0 addItem:itCorner];
        } else if (i==2) {
            QLCareHeadItem *itHead = [[QLCareHeadItem alloc] init];
            itHead.tipText = @"回复了帖子：";
            [section0 addItem:itHead];
            
            QLCareTieZiItem *itTieZi = [[QLCareTieZiItem alloc] init];
            [section0 addItem:itTieZi];
            
            QLCareDescItem *itDesc = [[QLCareDescItem alloc] init];
            itDesc.titleText = @"涨姿势了，我也要试试，希望也有个大长腿的帅儿子，感谢楼主分享，赞赞~~";
            [section0 addItem:itDesc];
            
            QLCareCornerItem *itCorner = [[QLCareCornerItem alloc] init];
            itCorner.cellHeight = 12;
            [section0 addItem:itCorner];
        }
        
        [section0 addItem:[WTEmptyItem initWithHeight:8]];
    }
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];    
    [self.formTable reloadData];
}

- (void)btnPress {
    UIViewController *vc = [[CTMediator sharedInstance] performTarget:@"QLMineModel" action:@"guanzhuVC" params:nil shouldCacheTarget:NO];
    [self.navigationController pushViewController:vc animated:YES];
}
@end

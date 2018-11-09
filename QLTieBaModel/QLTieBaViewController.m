//
//  QLTieBaViewController.m
//  Project
//
//  Created by 计恩良 on 2018/5/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLTieBaViewController.h"
@interface QLTieBaViewController ()<WTTabPagerControllerDataSource,WTTabPagerControllerDelegate>
@property (nonatomic, strong) NSArray *datas;
@end

@implementation QLTieBaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.leftItemList = [NSArray array];
    [self setControllerTitle];
    [self setTabBarView];
}

- (void)setControllerTitle {
    self.navBar.title = @"浪吧";
}

- (void)setTabBarView {
    self.tabBarHeight = 50;
    self.tabBarOrignY = WT_NavBar_Height;
    self.tabBar.layout.barStyle = WTPagerBarStyleProgressView;
    self.tabBar.layout.cellSpacing = 0;
    self.tabBar.layout.cellEdging = 0;
    self.tabBar.layout.adjustContentCellsCenter = YES;
    self.dataSource = self;
    self.delegate = self;
    self.pagerController.view.frame = CGRectMake(0, self.tabBarOrignY+self.tabBarHeight, WTScreenWidth, WTScreenHeight - self.tabBarOrignY - self.tabBarHeight - WT_TabBar_Height);
    
    [self loadData];
}

- (void)loadData {
    NSMutableArray *datas = [NSMutableArray array];
    for (NSInteger i = 0; i < 15; ++i) {
        [datas addObject:i%2 == 0 ? [NSString stringWithFormat:@"Tab %ld",i]:[NSString stringWithFormat:@"Tab Tab %ld",i]];
    }
    _datas = [datas copy];
//    [self scrollToControllerAtIndex:1 animate:YES];
    [self reloadData];
}

#pragma mark - WTTabPagerControllerDataSource
- (NSInteger)numberOfControllersInTabPagerController {
    return _datas.count;
}

- (UIViewController *)tabPagerController:(WTTabPagerController *)tabPagerController controllerForIndex:(NSInteger)index prefetching:(BOOL)prefetching {
    if (index%3 == 0) {
        UIViewController *VC = [[UIViewController alloc]init];
        VC.view.backgroundColor = [UIColor redColor];
        return VC;
    }else if (index%3 == 1) {
        UIViewController *VC = [[UIViewController alloc]init];
        VC.view.backgroundColor = [UIColor blueColor];
        return VC;
    }else {
        UIViewController *VC = [[UIViewController alloc]init];
        VC.view.backgroundColor = [UIColor purpleColor];
        return VC;
    }
}

- (NSString *)tabPagerController:(WTTabPagerController *)tabPagerController titleForIndex:(NSInteger)index {
    NSString *title = _datas[index];
    return title;
}

@end

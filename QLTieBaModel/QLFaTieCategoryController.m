//
//  QLFaTieCategoryController.m
//  WTDemo
//
//  Created by 计恩良 on 2019/2/2.
//  Copyright © 2019年 计恩良. All rights reserved.
//

#import "QLFaTieCategoryController.h"

@implementation QLFaTieCategoryController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.title = @"发帖";
    
    UILabel *tipLab = [[UILabel alloc] initWithFrame:CGRectMake(20, WT_NavBar_Height+16, WTScreenWidth-20, 11)];
    tipLab.font = WTFontSys(12);
    tipLab.textColor = QL_UserName_TitleColor_Black;
    tipLab.text = @"请选择话题分类";
    [self.view addSubview:tipLab];
}
@end

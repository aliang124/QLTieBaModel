//
//  QLTieBaUserInfoCell.h
//  QLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "QLTieBaUserInfoCell.h"
#import "WTBaseCore.h"
#import "QLBusiness.h"

@implementation QLTieBaUserInfoItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 50;
        self.hasBottomLine = NO;
    }
    return self;
}

@end

@interface QLTieBaUserInfoCell()
{
    UILabel *titleLab;
}
@end

@implementation QLTieBaUserInfoCell

- (void)cellDidLoad
{
    [super cellDidLoad];
    titleLab = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, WTScreenWidth-16-40, 5)];
    titleLab.font = WTFontBoldSys(16);
    titleLab.numberOfLines = 0;
    titleLab.textColor = QL_UserName_TitleColor_Black;
    [self.contentView addSubview:titleLab];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {}

- (void)cellWillAppear
{
    [super cellWillAppear];
    self.backgroundColor = [UIColor whiteColor];
    titleLab.text = [WTUtil strRelay:self.item.titleText];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}
@end

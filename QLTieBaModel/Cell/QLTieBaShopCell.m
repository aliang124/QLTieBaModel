//
//  QLTieBaShopCell.h
//  QLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "QLTieBaShopCell.h"
#import "WTBaseCore.h"
#import "QLBusiness.h"

@implementation QLTieBaShopItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 76;
        self.hasBottomLine = NO;
    }
    return self;
}

@end

@interface QLTieBaShopCell()
{
    UIView *bgView;
    UIImageView *iconImg;
    UILabel *nameLab;
    UILabel *moneyLab;
}
@end

@implementation QLTieBaShopCell

- (void)cellDidLoad
{
    [super cellDidLoad];
    self.backgroundColor = [UIColor whiteColor];

    bgView = [[UIView alloc] initWithFrame:CGRectMake(16, 0, WTScreenWidth-16-16, 76)];
    bgView.layer.cornerRadius = 3;
    bgView.layer.masksToBounds = YES;
    bgView.backgroundColor = WTColorHex(0xE4E4DA);
    bgView.layer.borderWidth = 1;
    bgView.layer.borderColor = WTColorHex(0xFAFAF7).CGColor;
    [self.contentView addSubview:bgView];
    
    iconImg = [[UIImageView alloc] initWithFrame:CGRectMake(8, 8, 80, 60)];
    iconImg.backgroundColor = [UIColor redColor];
    [bgView addSubview:iconImg];
    
    nameLab = [[UILabel alloc] initWithFrame:CGRectMake(iconImg.right+10, 9, bgView.width-iconImg.right-10-10, 13)];
    nameLab.font = WTFontBoldSys(14);
    nameLab.textColor = QL_UserName_TitleColor_Black;
    [bgView addSubview:nameLab];

    moneyLab = [[UILabel alloc] initWithFrame:CGRectMake(nameLab.left, nameLab.bottom+11, nameLab.width, 9)];
    moneyLab.font = WTFontSys(10);
    moneyLab.textColor = QL_DescColor_Gray;
    [bgView addSubview:moneyLab];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {}

- (void)cellWillAppear
{
    [super cellWillAppear];
    nameLab.text = [WTUtil strRelay:self.item.shopNameText];
    moneyLab.text = @"¥90/人";
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}
@end

//
//  QLMineHeadCell.h
//  QLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "QLTieBaCell.h"
#import "WTBaseCore.h"

@implementation QLTieBaItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 50+100;
        self.hasBottomLine = NO;
        self.titleTextHeight = 5;
        self.descTextHeight = 5;
    }
    return self;
}

@end

@interface QLTieBaCell()
{
    //上面用户信息
    UIButton *bgView;
    UIImageView *iconImg;
    
    UILabel *titleLab;
    UILabel *descLab;
}
@end

@implementation QLTieBaCell

- (void)cellDidLoad
{
    [super cellDidLoad];
    //总背景
    bgView = [[UIButton alloc] initWithFrame:CGRectMake(8, 0, WTScreenWidth-8-8, 8)];
    [bgView setBackgroundImage:[WTUtil createImageFromColor:[UIColor whiteColor]] forState:UIControlStateNormal];
    [bgView setBackgroundImage:[WTUtil createImageFromColor:WTColorHex(0xcccccc)] forState:UIControlStateHighlighted];
    [self.contentView addSubview:bgView];
    //用户信息区域
    iconImg = [[UIImageView alloc] initWithFrame:CGRectMake(12, 10, 30, 30)];
    iconImg.backgroundColor = [UIColor redColor];
    iconImg.layer.cornerRadius = 15;
    iconImg.layer.masksToBounds = YES;
    [bgView addSubview:iconImg];
    
    UIImageView *lineImg = [[UIImageView alloc] initWithFrame:CGRectMake(13, 49.5, bgView.width-13-15, WT_Line_Height)];
    lineImg.backgroundColor = QL_TableView_LineColor;
    [bgView addSubview:lineImg];
    //文字描述区域
    titleLab = [[UILabel alloc] initWithFrame:CGRectMake(11, lineImg.bottom+10, bgView.width-12-15, 5)];
    titleLab.font = WTFontSys(14);
    titleLab.numberOfLines = 2;
    titleLab.textColor = QL_NavBar_TitleColor_Black;
    [bgView addSubview:titleLab];

    descLab = [[UILabel alloc] initWithFrame:CGRectMake(11, titleLab.bottom+7, bgView.width-12-15, 5)];
    descLab.font = WTFontSys(12);
    descLab.numberOfLines = 2;
    descLab.textColor = QL_DescColor_Gray;
    [bgView addSubview:descLab];
    //图片区域
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {}

- (void)cellWillAppear
{
    [super cellWillAppear];
    self.backgroundColor = WT_Color_ViewBackGround;
    self.contentView.backgroundColor = WT_Color_ViewBackGround;
    //标题自适应高度缓存
    NSString *titleText = @"爸妈做到这5点，宝宝将来不愁大长腿！";
    if (self.item.titleTextHeight==5) {
        titleLab.height = [self getTextHeight:titleText font:WTFontSys(14)];
        self.item.titleTextHeight = titleLab.height;
    }
    titleLab.text = titleText;
    //描述自适应高度缓存
    NSString *descText = @"青春期是长高的一个黄金期，爸妈都知道，小南就略过不提。重点说说爸妈可能忽略的“3岁前”吧。先说说宝宝身高增长的";
    if (self.item.descTextHeight==5) {
        descLab.height = [self getTextHeight:descText font:WTFontSys(12)];
        self.item.descTextHeight = descLab.height;
    }
    descLab.text = descText;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    bgView.height = self.height;
    descLab.top = titleLab.bottom+7;
}

- (float)getTextHeight:(NSString *)title font:(UIFont *)font {
    UILabel *tLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, bgView.width-12-15, 10)];
    tLab.font = font;
    tLab.numberOfLines = 2;
    tLab.text = title;
    [tLab sizeToFit];
    return tLab.height;
}
@end

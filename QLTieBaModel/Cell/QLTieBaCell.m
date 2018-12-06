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
    }
    return self;
}

@end

@interface QLTieBaCell()
{
    UIButton *bgView;
}
@end

@implementation QLTieBaCell

- (void)cellDidLoad
{
    [super cellDidLoad];
    bgView = [[UIButton alloc] initWithFrame:CGRectMake(8, 0, WTScreenWidth-8-8, 8)];
    [bgView setBackgroundImage:[WTUtil createImageFromColor:[UIColor whiteColor]] forState:UIControlStateNormal];
    [bgView setBackgroundImage:[WTUtil createImageFromColor:WTColorHex(0xcccccc)] forState:UIControlStateHighlighted];
    [self.contentView addSubview:bgView];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {}

- (void)cellWillAppear
{
    [super cellWillAppear];
    self.backgroundColor = WT_Color_ViewBackGround;
    self.contentView.backgroundColor = WT_Color_ViewBackGround;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    bgView.height = self.height;
}

@end

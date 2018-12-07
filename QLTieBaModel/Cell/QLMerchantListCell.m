//
//  QLMerchantListCell.h
//  QLTieBa
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "QLMerchantListCell.h"
#import "WTBaseCore.h"
#import "QLBusiness.h"

@implementation QLMerchantListItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 180;
        self.hasBottomLine = NO;
    }
    return self;
}

@end

@interface QLMerchantListCell()
{
}
@end

@implementation QLMerchantListCell

- (void)cellDidLoad
{
    [super cellDidLoad];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}
//- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {}

- (void)cellWillAppear
{
    [super cellWillAppear];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}
@end

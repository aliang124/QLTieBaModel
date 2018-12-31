//
//  QLTieBaTitleCell.h
//  WQLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "WTBaseCell.h"

@interface QLTieBaTitleItem : WTBaseItem
@property (nonatomic,copy) NSString *titleText;//标题
//缓存标题高度
@property (nonatomic,assign) float titleTextHeight;
@end

@interface QLTieBaTitleCell : WTBaseCell
@property (strong, readwrite, nonatomic) QLTieBaTitleItem *item;
@end

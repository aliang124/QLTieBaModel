//
//  QLTieBaShopCell.h
//  WQLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "WTBaseCore.h"
#import "QLBusiness.h"
@interface QLPingJiaScoreItem : RETableViewItem
@property (nonatomic,copy) NSString *scoreText;
@end

@interface QLPingJiaScoreCell : RETableViewCell
@property (strong, readwrite, nonatomic) QLPingJiaScoreItem *item;
@end

//
//  QLMineNetWork.m
//  WTDemo
//
//  Created by 计恩良 on 2019/1/9.
//  Copyright © 2019年 计恩良. All rights reserved.
//
//个人中心
#define QL_NetWorking_TieBaCatogery @"/plate/index"

#import "QLTieBaNetWork.h"
#import "WTBaseCore.h"
#import "QLBusiness.h"

@implementation QLTieBaNetWork
+ (void)getTieBaCatogery:(NSDictionary *)param successHandler:(void (^)(id json))successHandler failHandler:(void (^)(NSString *message))failHandler {
    [QLNetWorkingUtil postDataWithHost:QL_Net_Host Path:QL_NetWorking_TieBaCatogery Param:param success:^(id json) {
        if (successHandler) {
            successHandler(json);
        }
    } fail:^(NSString *message) {
        if (failHandler) {
            failHandler(message);
        }
    }];
}
@end

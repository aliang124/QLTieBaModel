//
//  QLTieBaDetailViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/31.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLTieBaDetailViewController.h"

@interface QLTieBaDetailViewController ()

@end

@implementation QLTieBaDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initForm];
}

- (void)initForm {
    WT(bself);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    
    [self.formTable reloadData];
}
@end
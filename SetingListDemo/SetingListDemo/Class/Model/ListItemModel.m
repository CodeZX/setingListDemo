//
//  ListItemModel.m
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/6.
//  Copyright © 2019 ZX. All rights reserved.
//

#import "ListItemModel.h"

@implementation ListItemModel

- (instancetype)initWithDictionary:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        if (dic) {
            self.title = dic[@"title"];
            self.nextVCName = dic[@"NextVCName"];
        }
    }
    return self;
}

@end

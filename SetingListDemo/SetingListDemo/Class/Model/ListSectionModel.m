//
//  ListSectionModel.m
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/8.
//  Copyright © 2019 ZX. All rights reserved.
//

#import "ListSectionModel.h"
#import "ListItemModel.h"

@implementation ListSectionModel


- (instancetype)initWithDictionary:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        if (dic) {
            self.title = dic[@"title"];
            for (NSDictionary *listItemDic in dic[@"ListItems"]) {
                ListItemModel *listItemModel = [[ListItemModel alloc]initWithDictionary:listItemDic];
                [self.listItems addObject:listItemModel];
            }
        }
    }
    return self;
}

- (NSMutableArray *)listItems {
    if (!_listItems) {
        _listItems = [[NSMutableArray alloc]init];
    }
    return _listItems;
}
@end

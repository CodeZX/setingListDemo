//
//  ListSectionModel.h
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/8.
//  Copyright © 2019 ZX. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListSectionModel : NSObject
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSMutableArray *listItems;

- (instancetype)initWithDictionary:(NSDictionary *)dic;
@end

NS_ASSUME_NONNULL_END

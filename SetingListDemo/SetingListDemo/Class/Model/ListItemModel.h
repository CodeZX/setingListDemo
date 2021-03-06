//
//  ListItemModel.h
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/6.
//  Copyright © 2019 ZX. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListItemModel : NSObject
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *nextVCName;
- (instancetype)initWithDictionary:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END

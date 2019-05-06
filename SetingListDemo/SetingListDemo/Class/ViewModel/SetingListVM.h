//
//  SetingListVM.h
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/6.
//  Copyright © 2019 ZX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ListItemModel;

NS_ASSUME_NONNULL_BEGIN

@interface SetingListVM : NSObject

- (instancetype)initWithTarget:(UIViewController<UITableViewDelegate,UITableViewDataSource> *)target DataSources:(NSArray<ListItemModel *> *)dataSource;
@end

NS_ASSUME_NONNULL_END

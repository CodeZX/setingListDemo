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
@property (nonatomic,strong,readonly) NSArray *allListItem;
- (instancetype)initWithTarget:(UIViewController<UITableViewDelegate,UITableViewDataSource> *)target DataSources:(NSArray *)dataSource;
- (ListItemModel *)listItemAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)numberOfRowsInSection:(NSInteger)section;
- (NSInteger)numberOfSections;
@end

NS_ASSUME_NONNULL_END

//
//  ListItemCell.h
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/7.
//  Copyright © 2019 ZX. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ListItemModel;

NS_ASSUME_NONNULL_BEGIN

@interface ListItemCell : UITableViewCell

@property (nonatomic,strong) ListItemModel *listItemModel;
+ (ListItemCell *)cellWithTableView:(UITableView *)tableView Identifier:(NSString *)identifier;

@end

NS_ASSUME_NONNULL_END

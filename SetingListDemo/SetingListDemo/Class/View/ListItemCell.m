//
//  ListItemCell.m
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/7.
//  Copyright © 2019 ZX. All rights reserved.
//

#import "ListItemCell.h"
#import "ListItemModel.h"


@interface ListItemCell ()

@property (nonatomic,weak) UILabel *titleLabel;
@end
@implementation ListItemCell

+ (ListItemCell *)cellWithTableView:(UITableView *)tableView Identifier:(NSString *)identifier {

    ListItemCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[ListItemCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    return self;
}


- (void)setupUI  {
    
    
    UILabel *titleLabel =[[UILabel alloc]init];
    titleLabel.backgroundColor = [UIColor redColor];
    titleLabel.text = @"设置";
    [self.contentView addSubview:titleLabel];
    self.titleLabel = titleLabel;
    UIEdgeInsets insets = UIEdgeInsetsMake(0, 20, 0, 0);
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(insets.left);
//        make.top.equalTo(self.contentView).offset(insets.top);
        make.centerY.equalTo(self.contentView);
        
        
        
        
    }];
    
    
}
- (void)setListItemModel:(ListItemModel *)listItemModel {
    _listItemModel  = listItemModel;
    self.titleLabel.text = listItemModel.title;
}

@end

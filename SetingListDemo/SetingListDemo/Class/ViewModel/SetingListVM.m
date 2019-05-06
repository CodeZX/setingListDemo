//
//  SetingListVM.m
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/6.
//  Copyright © 2019 ZX. All rights reserved.
//

#import "SetingListVM.h"

@interface SetingListVM ()

@property (nonatomic,strong) UITableView *TableView;
@property (nonatomic,strong) NSArray<ListItemModel *>* dataSource;
@end

@implementation SetingListVM
- (instancetype)initWithTarget:(UIViewController<UITableViewDelegate,UITableViewDataSource> *)target DataSources:(  NSArray<ListItemModel *> *)dataSource {
    self = [super init];
    if (self) {
        [self setupTarget:target];
        [self setupDataSource:dataSource];
    
    }
    return self;
}

- (void)setupTarget:(UIViewController<UITableViewDelegate,UITableViewDataSource> *)target {
    
    if (!target) {return;}
    self.TableView.delegate = target;
    self.TableView.dataSource = target;
    
}

- (void)setupDataSource:(NSArray<ListItemModel *> *)dataSource {
   
    if (!dataSource) {return;}
    self.dataSource = dataSource;
    
    
    
}

- (UITableView *)TableView {
    if (!_TableView) {
        _TableView = [[UITableView alloc]init];
        
    }
    return _TableView;
}
@end

//
//  SetingListVM.m
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/6.
//  Copyright © 2019 ZX. All rights reserved.
//

#import "SetingListVM.h"
#import "ListItemModel.h"
#import "ListSectionModel.h"

@interface SetingListVM ()

@property (nonatomic,strong) UITableView *TableView;
@property (nonatomic,strong) NSMutableArray* dataSource;
@end

@implementation SetingListVM
- (instancetype)initWithTarget:(UIViewController<UITableViewDelegate,UITableViewDataSource> *)target DataSources:(NSArray *)dataSource {
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
    [target.view addSubview:self.TableView];
    [self.TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(target.view).insets(UIEdgeInsetsZero);
    }];
   
    
}

- (void)setupDataSource:(NSArray *)dataSource {
   
    if (!dataSource) {
        NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"SetingListInfo" ofType:@"plist"];
        NSMutableDictionary *dataDic = [[NSMutableDictionary alloc]initWithContentsOfFile:plistPath];
        NSArray *sectionArray = dataDic[@"Sections"];
        for (NSDictionary *sectionDic in sectionArray) {
            ListSectionModel *listSectionModel = [[ListSectionModel alloc]initWithDictionary:sectionDic];
            [self.dataSource addObject:listSectionModel];
        }
        
    }else {
      self.dataSource = [NSMutableArray arrayWithArray:dataSource];
    }
    

}

- (ListItemModel *)listItemAtIndexPath:(NSIndexPath *)indexPath {
    if (!indexPath) {return nil;}
    ListSectionModel *listSetionModel = self.dataSource[indexPath.section];
    return listSetionModel.listItems[indexPath.row];
}
- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    ListSectionModel *listSetionModel = self.dataSource[section];
    return listSetionModel.listItems.count;
}

- (NSInteger)numberOfSections {
    return self.dataSource.count;
}

- (NSArray *)allListItem {
    return self.dataSource;
}

- (UITableView *)TableView {
    if (!_TableView) {
        _TableView = [[UITableView alloc]init];
    }
    return _TableView;
}

- (NSMutableArray *)dataSource {
    
    if (!_dataSource) {
        _dataSource = [[NSMutableArray alloc]init];
    }
    return _dataSource;
    
    
}
@end

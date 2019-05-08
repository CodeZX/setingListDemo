//
//  ViewController.m
//  SetingListDemo
//
//  Created by 周鑫 on 2019/5/6.
//  Copyright © 2019 ZX. All rights reserved.
//

#import "ViewController.h"
#import "ListItemModel.h"
#import "SetingListVM.h"
#import "ListItemCell.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) SetingListVM *setingListVM;
@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = [[NSArray alloc]init];
    self.setingListVM  = [[SetingListVM alloc]initWithTarget:self DataSources:nil];
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    static NSString* const listItemCellIdentifier = @"listItemCell";
    ListItemCell *cell = [ListItemCell cellWithTableView:tableView Identifier:listItemCellIdentifier];
    cell.listItemModel = [self.setingListVM listItemAtIndexPath:indexPath];
    return cell;
   
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    return [self.setingListVM numberOfRowsInSection:section];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.setingListVM numberOfSections];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
    v.backgroundColor = [UIColor lightGrayColor];
    return v;
}




@end


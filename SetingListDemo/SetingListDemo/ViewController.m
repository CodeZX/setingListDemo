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


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) SetingListVM *setingListVM;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = [[NSArray alloc]init];
    self.setingListVM  = [[SetingListVM alloc]initWithTarget:self DataSources:array];
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}






@end


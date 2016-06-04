//
//  RecentController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/3.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "RecentController.h"
#import "RendentModel.h"
#import "RecentTabelCell.h"




@interface RecentController ()

@property (nonatomic,strong)NSArray *dataArray;



@end

@implementation RecentController

static NSString *identify = @"RecentCell";


-(NSArray *)dataArray
{
    if (_dataArray == nil)
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"callRecords.plist" ofType:nil];
        
        NSArray *tempArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *mutableArr = [NSMutableArray array];
        
        for (NSDictionary *dict in tempArray)
        {
            RendentModel *rencentModel = [RendentModel RencentModelWithDict:dict];
            
            [mutableArr addObject:rencentModel];
        }
        
        _dataArray = mutableArr;
        
    }
    return _dataArray;
}



- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    UINib *nib = [UINib nibWithNibName:@"RecentCell" bundle:nil];
    
    
    [self.tableView registerNib:nib forCellReuseIdentifier:identify];
    
    self.tableView.rowHeight = 60;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//数据源方法
//(1)组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}
//(2)行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.dataArray.count;
}
//(3)行内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecentTabelCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    cell.model = self.dataArray[indexPath.row];
    
    
    return cell;
}

@end

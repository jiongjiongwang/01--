//
//  RecentController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/3.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "RecentController.h"
#import "RendentModel.h"


@interface RecentController ()

@property (nonatomic,strong)NSArray *dataArray;



@end

@implementation RecentController

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
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 0;
}
@end

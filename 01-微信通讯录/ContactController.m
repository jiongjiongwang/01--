//
//  ContactController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "ContactController.h"


//定义一个宏，用于方便地使用文件路径
#define kFilePath(fileName) ([NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES)[0] stringByAppendingPathComponent:fileName])



@interface ContactController ()


//定义一个可变数组，用于存放联系人数据
@property (nonatomic,strong)NSMutableArray *dataArray;



@end

@implementation ContactController

static NSString *identify = @"ContactCell";


//懒加载联系人数据
-(NSMutableArray *)dataArray
{
    if (nil == _dataArray)
    {
        //把dataArray数组解档
        _dataArray = [NSKeyedUnarchiver unarchiveObjectWithFile:kFilePath(@"a.data")];
        
        //判断有没有数据
        if (_dataArray == nil)
        {
            //当没有数据时，则重新实例化一个空数组
            _dataArray = [NSMutableArray array];
        }
    }
    
    return _dataArray;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //设置一个没有frame的footerView,如果cell没有数据内容，就不会显示
    self.tableView.tableFooterView = [[UIView alloc]init];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

//实现数据源代理方法
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identify];
    }
    
    return cell;
}



@end

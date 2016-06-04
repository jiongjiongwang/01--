//
//  ContactController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "ContactController.h"
#import "AddContactDelegate.h"
#import "AddContactController.h"
#import "ContactModel.h"





//定义一个宏，用于方便地使用文件路径
#define kFilePath(fileName) ([NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES)[0] stringByAppendingPathComponent:fileName])



@interface ContactController ()<AddContactDelegate>


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
    
    ContactModel *model = self.dataArray[indexPath.row];
    
    cell.textLabel.text = model.name;
    cell.detailTextLabel.text = model.phoneNum;
    
    return cell;
}


//添加联系人按钮
- (IBAction)addContact:(UIBarButtonItem *)sender
{
    //跳转到添加按钮界面
    [self performSegueWithIdentifier:@"addContact" sender:nil];

}





//(4)点击cell的触发事件:跳转到编辑联系人界面
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


//当使用segue进行页面跳转时，都会默认执行的方法
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //通过segue的标示符判断是跳转到哪一个界面
    NSString *segueIndentify = segue.identifier;
    
    if ([segueIndentify isEqualToString:@"addContact"])
    {
        AddContactController *addVC = (AddContactController *)segue.destinationViewController;
        
        addVC.delegate = self;
    }
    else if([segueIndentify isEqualToString:@"EditContact"])
    {
        
    }
}

//实现添加联系人代理方法
-(void)AddContactController:(AddContactController *)addVC withModel:(ContactModel *)model
{
    //(1)将数据添加到可变数组中
    [self.dataArray addObject:model];
    
    //(2)将新添加的数据归档
    [NSKeyedArchiver archiveRootObject:self.dataArray toFile:kFilePath(@"a.data")];
    
    //(3)刷新tableView
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.dataArray.count-1 inSection:0];
    
    
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];


}


//增加删除数据的功能
-(void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //当是删除模式的时候
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        //(1)更新dataArray数组
        [self.dataArray removeObjectAtIndex:indexPath.row];
        
        //将dataArray重新归档
        [NSKeyedArchiver archiveRootObject:self.dataArray toFile:kFilePath(@"a.data")];
        
        //(2)刷新数据
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}
//更改删除的字样
-(NSString *)tableView:(UITableView *)tableView
titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"删除";
}



@end

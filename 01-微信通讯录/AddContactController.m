//
//  AddContactController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "AddContactController.h"

@interface AddContactController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextFiled;

@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;


@property (weak, nonatomic) IBOutlet UIButton *addButton;



@end

@implementation AddContactController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //添加两个textField的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(TextChanged) name:UITextFieldTextDidChangeNotification object:self.nameTextFiled];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(TextChanged) name:UITextFieldTextDidChangeNotification object:self.phoneTextField];
    
}


//当view已经全部显示的时候才把nameTextField的第一响应者身份打开
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //打开nameTextField的第一响应者身份
    [_nameTextFiled becomeFirstResponder];
}


//监控两个textField的状态
-(void)TextChanged
{
    if ((_nameTextFiled.text.length >0) && (_phoneTextField.text.length > 0))
    {
        _addButton.enabled = YES;
    }
    else
    {
        _addButton.enabled = NO;
    }
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (IBAction)AddContact:(UIButton *)sender
{


}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end

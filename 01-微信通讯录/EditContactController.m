//
//  EditContactController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "EditContactController.h"

@interface EditContactController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (weak, nonatomic) IBOutlet UITextField *phoneNumTextField;

@property (weak, nonatomic) IBOutlet UIButton *saveButton;


@end

@implementation EditContactController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //初始阶段每个textField控件禁用
    _nameTextField.enabled = NO;
    
    _phoneNumTextField.enabled = NO;
    
    _saveButton.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



//编辑 通讯录 按钮
- (IBAction)EditContact:(UIBarButtonItem *)sender
{


}


@end

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
    
    //在此根据接收过来的Model信息分配数据
    _nameTextField.text = _model.name;
    
    _phoneNumTextField.text = _model.phoneNum;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



//编辑 通讯录 按钮
- (IBAction)EditContact:(UIBarButtonItem *)sender
{
    if (_saveButton.hidden == YES)
    {
        _nameTextField.enabled = YES;
        
        [_nameTextField becomeFirstResponder];
        
        _phoneNumTextField.enabled = YES;
        
        sender.title = @"取消";
        
        _saveButton.hidden = NO;
        
        
    }
    else
    {
        _nameTextField.enabled = NO;
        
        [self.view endEditing:YES];
        
        _phoneNumTextField.enabled = NO;
        
        //将两个编辑框的内容还原成原来的样子
        _nameTextField.text = _model.name;
        
        _phoneNumTextField.text = _model.phoneNum;
        
        sender.title = @"编辑";
        
        _saveButton.hidden = YES;
    }
    

}

//保存按钮
- (IBAction)SaveContact:(UIButton *)sender
{
    
     //(1)修改model的属性
    _model.name = _nameTextField.text;
    
    _model.phoneNum = _phoneNumTextField.text;
    
    //(2)调用block传递数据
    if (_editBlock)
    {
        _editBlock();
    }
    
    //(3)返回到上一页
    [self.navigationController popViewControllerAnimated:YES];
    
}



@end

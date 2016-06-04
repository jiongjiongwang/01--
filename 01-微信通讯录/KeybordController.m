//
//  KeybordController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "KeybordController.h"

#define kXmargin 50

#define kYmargin 100

#define kmargin 30

#define kColoum 3
#define kRow 5



@interface KeybordController ()

@end

@implementation KeybordController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //布置界面
    [self setUpUI];
    
}

-(void)setUpUI
{
    CGFloat buttonWidth = (self.view.bounds.size.width - 2*kXmargin - (kColoum -1)*kmargin)/kColoum;
    
    CGFloat buttonHeight = buttonWidth;
    
    for (int i = 0; i< kRow*kColoum; i++)
    {
        
        NSString *imageString;
        
        if (i == 12)
        {
            i++;
            imageString = [NSString stringWithFormat:@"13"];
        }
        else
        {
             imageString = [NSString stringWithFormat:@"%@",@(i+1)];
        }
        
        
        CGFloat rowIndex = i/kColoum;
        
        CGFloat coloumIndex = i%kColoum;
        
        CGFloat buttonX = kXmargin + coloumIndex*buttonWidth + coloumIndex*kmargin;
        
        CGFloat buttonY = kYmargin + rowIndex*buttonHeight + rowIndex*kmargin;
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(buttonX, buttonY, buttonWidth, buttonHeight)];
        
       
        
        [button setImage:[UIImage imageNamed:imageString] forState:UIControlStateNormal];
        
        [self.view addSubview:button];
        
     }
    
     //dialButton
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end

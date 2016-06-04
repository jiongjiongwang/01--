//
//  EditContactController.h
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactModel.h"


@interface EditContactController : UIViewController

//用于接收传递过来的数据
@property (nonatomic,strong)ContactModel *model;

@property (nonatomic,copy)dispatch_block_t editBlock;


@end

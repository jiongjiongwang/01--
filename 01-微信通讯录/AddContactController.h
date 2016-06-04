//
//  AddContactController.h
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddContactDelegate.h"


@interface AddContactController : UIViewController

@property (nonatomic,weak)id<AddContactDelegate>delegate;

@end

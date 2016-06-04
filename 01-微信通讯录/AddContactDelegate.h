//
//  AddContactDelegate.h
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AddContactController;
@class ContactModel;

@protocol AddContactDelegate <NSObject>


-(void)AddContactController:(AddContactController *)addVC withModel:(ContactModel *)model;


@end

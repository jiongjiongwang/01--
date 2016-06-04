//
//  RendentModel.h
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RendentModel : NSObject

@property (nonatomic,copy)NSString *name;

@property (nonatomic,copy)NSString *city;

@property (nonatomic,copy)NSString *time;

@property (nonatomic,copy)NSString *accessoryType;

-(instancetype)initWithDict:(NSDictionary *)dict;

+(instancetype)RencentModelWithDict:(NSDictionary *)dict;



@end

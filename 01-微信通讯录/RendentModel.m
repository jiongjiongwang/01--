//
//  RendentModel.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "RendentModel.h"

@implementation RendentModel


- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init])
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)RencentModelWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}




@end

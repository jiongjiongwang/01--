//
//  ContactModel.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "ContactModel.h"

@implementation ContactModel

//编码
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    
    [aCoder encodeObject:self.phoneNum forKey:@"phoneNum"];
}
//解码
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init])
    {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        
        self.phoneNum = [aDecoder decodeObjectForKey:@"phoneNum"];
    }
    
    return self;
}

@end

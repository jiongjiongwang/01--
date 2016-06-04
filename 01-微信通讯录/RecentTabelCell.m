//
//  RecentTabelCell.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/4.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "RecentTabelCell.h"
#import "RendentModel.h"


@interface RecentTabelCell()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;



@property (weak, nonatomic) IBOutlet UILabel *cityLabel;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *acceoryImage;


@end



@implementation RecentTabelCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

-(void)setModel:(RendentModel *)model
{
    _model = model;
    
    _nameLabel.text = model.name;
    
    _cityLabel.text = model.city;
    
    _timeLabel.text = model.time;
    
    _acceoryImage.image = [UIImage imageNamed:model.accessoryType];
}


@end

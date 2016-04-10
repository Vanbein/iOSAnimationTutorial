//
//  PGCardTableViewCell.m
//  PerfectVideoEditor
//
//  Created by zangqilong on 14/12/4.
//  Copyright (c) 2014年 zangqilong. All rights reserved.
//

#import "PGCardTableViewCell.h"

@implementation PGCardTableViewCell

- (void)awakeFromNib {
    
}

- (void)startAnimationWithDelay:(CGFloat)delayTime
{
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    _cardView.transform =  CGAffineTransformMakeTranslation(screenWidth, 0);
    [UIView animateWithDuration:1. delay:delayTime usingSpringWithDamping:0.6 initialSpringVelocity:0 options:0 animations:^{
        _cardView.transform = CGAffineTransformIdentity;
    } completion:NULL];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

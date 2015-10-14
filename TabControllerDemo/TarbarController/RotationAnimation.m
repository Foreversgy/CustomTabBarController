//
//  RotationAnimation.m
//  TabControllerDemo
//
//  Created by ShiMac on 15/10/14.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import "RotationAnimation.h"



@implementation RotationAnimation

-(void)selectPlayAnimation:(UIImageView *)imageView label:(UILabel *)label{
    
    
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    animation.toValue=@(2*M_PI);
    animation.duration=0.4;
    [imageView.layer addAnimation:animation forKey:@"ddd"];
    label.textColor=[UIColor blueColor];
}

-(void)deselectPlayAnimaiton:(UIImageView *)imageView label:(UILabel *)label
{
    [imageView.layer removeAllAnimations];
    label.textColor=[UIColor grayColor];
    
}

@end

//
//  TransitionAnimation.m
//  TabControllerDemo
//
//  Created by ShiMac on 15/10/14.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import "TransitionAnimation.h"
@implementation TransitionAnimation

-(void)selectPlayAnimation:(UIImageView *)imageView label:(UILabel *)label
{
    
    [UIView transitionWithView:imageView duration:0.4 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
        
        
    } completion:^(BOOL finished) {
        
        
    }];
    
    label.textColor=[UIColor blueColor];
}

-(void)deselectPlayAnimaiton:(UIImageView *)imageView label:(UILabel *)label
{
    label.textColor=[UIColor grayColor];
    
    
}

@end

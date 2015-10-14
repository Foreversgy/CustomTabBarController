//
//  BounchAnimation.m
//  TabControllerDemo
//
//  Created by ShiMac on 15/10/13.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import "BounchAnimation.h"

@implementation BounchAnimation

-(void)selectPlayAnimation:(UIImageView *)imageView label:(UILabel *)label
{
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    bounceAnimation.values = @[@(1.0) ,@(1.4), @(0.9), @(1.15), @(0.95), @(1.02),@(1)];
    bounceAnimation.duration = 0.5;
    bounceAnimation.calculationMode = kCAAnimationCubic;
    
//    icon.layer.addAnimation(bounceAnimation, forKey: "bounceAnimation")
    [imageView.layer addAnimation:bounceAnimation forKey:@"ddd"];
    
    label.textColor=[UIColor blueColor];
    
}

-(void)deselectPlayAnimaiton:(UIImageView *)imageView label:(UILabel *)label
{
    
//    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
//    bounceAnimation.values = @[@(1.0) ,@(1.4), @(0.9), @(1.15), @(0.95), @(1.02),@(1)];
//    bounceAnimation.duration = 0.5;
//    bounceAnimation.calculationMode = kCAAnimationCubic;
//    
//    //    icon.layer.addAnimation(bounceAnimation, forKey: "bounceAnimation")
//    [imageView.layer addAnimation:bounceAnimation forKey:@"ddd"];
    label.textColor=[UIColor grayColor];

}

@end

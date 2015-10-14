//
//  CustomTabBarController.h
//  TabControllerDemo
//
//  Created by ShiMac on 15/10/13.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AniamtionTabBar <NSObject>
-(void)selectPlayAnimation:(UIImageView *)imageView label:(UILabel *)label;
-(void)deselectPlayAnimaiton:(UIImageView *)imageView label:(UILabel *)label;
@end

@interface CustomTabBarController : UITabBarController

@end

@interface CustomTabBar:UITabBarItem

@property(nonatomic ,retain)id<AniamtionTabBar> delegate;

@end

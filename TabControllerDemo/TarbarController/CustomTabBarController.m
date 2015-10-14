//
//  CustomTabBarController.m
//  TabControllerDemo
//
//  Created by ShiMac on 15/10/13.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import "CustomTabBarController.h"
@implementation CustomTabBar


@end

@interface CustomTabBarController ()

@property(nonatomic,strong)NSMutableArray *viewContains;

@end

@implementation CustomTabBarController

-(instancetype)init
{
    if (self=[super init]) {
        
        self.viewContains=[[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)setViewControllers:(NSArray *)viewControllers
{
    [super setViewControllers:viewControllers];
    //自定义tab栏
    UIView *toolView=[[UIView alloc] initWithFrame:self.tabBar.frame];
    CGSize size=CGSizeMake(toolView.frame.size.width/self.tabBar.items.count, toolView.frame.size.height);
    [self.view addSubview:toolView];
    
    
    //自定义图片
    for (NSInteger index=0; index<self.tabBar.items.count; index++) {
        
        UIView *bgView=[[UIView alloc] initWithFrame:CGRectMake(size.width*index, 0, size.width, size.height)];
        bgView.tag=index;
        UITapGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapView:)];
        bgView.userInteractionEnabled=YES;
        [bgView addGestureRecognizer:tapGesture];
        
        UITabBarItem *barItem=[[self.tabBar items] objectAtIndex:index];
        UIImageView *imageView=[[UIImageView alloc] initWithImage:barItem.image];
        CGSize imageSize=barItem.image.size;
        imageView.frame=CGRectMake((size.width-imageSize.width)/2, (size.height-imageSize.height-12-2)/2, imageSize.width, imageSize.height);
        [bgView addSubview:imageView];
        
        UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(2, size.height-12-2, size.width-4, 12)];
        label.text=barItem.title;
        label.font=[UIFont systemFontOfSize:10];
        label.textAlignment=NSTextAlignmentCenter;
        [bgView addSubview:label];
        
        barItem.image=nil;
        barItem.title=@"";
        
        NSDictionary *dict=[NSDictionary dictionaryWithObjectsAndKeys:label,@"label", imageView,@"imageView",nil];
        [self.viewContains addObject:dict];
        [toolView addSubview:bgView];
    }
    self.selectedIndex=0;
}

-(void)tapView:(UITapGestureRecognizer *)gesture
{
    NSInteger index=gesture.view.tag;
    if (self.selectedIndex == index) {
        return;
    }
    
    CustomTabBar *oldItem=[self.tabBar.items objectAtIndex:self.selectedIndex];
    CustomTabBar *newItem=[self.tabBar.items objectAtIndex:index];
    if (oldItem.delegate && [oldItem.delegate respondsToSelector:@selector(deselectPlayAnimaiton:label:)]) {
        
        NSDictionary *dict=[self.viewContains objectAtIndex:self.selectedIndex];
        
        [oldItem.delegate deselectPlayAnimaiton:[dict objectForKey:@"imageView"] label:[dict objectForKey:@"label"]];
    }
    
    if (newItem.delegate && [newItem.delegate respondsToSelector:@selector(selectPlayAnimation:label:)]) {
        NSDictionary *dict=[self.viewContains objectAtIndex:index];
        
        [newItem.delegate selectPlayAnimation:[dict objectForKey:@"imageView"] label:[dict objectForKey:@"label"]];
    }
    
    self.selectedIndex=index;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

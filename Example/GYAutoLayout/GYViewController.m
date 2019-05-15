//
//  GYViewController.m
//  GYAutoLayout
//
//  Created by guyaoyao on 05/15/2019.
//  Copyright (c) 2019 guyaoyao. All rights reserved.
//

#import "GYViewController.h"
#import <GYLayout.h>

@interface GYViewController ()

@end

@implementation GYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    
    UIView *view = [[UIView alloc]init];
    view.frame = GY_CGRectMake(0, 64, 80, 200);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    
    NSLog(@" ------- %@",NSStringFromCGRect(view.frame));
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

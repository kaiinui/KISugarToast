//
//  KIViewController.m
//  SugarToast
//
//  Created by kaiinui on 2014/09/02.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "KIViewController.h"

#import "KISugarToastOption.h"
#import "KISugarToast.h"

@interface KIViewController ()

@end

@implementation KIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    KISugarToastOption *option = [KISugarToastOption new];
    option.backgroundColor = [UIColor colorWithRed:0.376 green:0.49 blue:0.545 alpha:1];
    option.label = @"Rate me please!";
    option.font = [UIFont fontWithName:@"AvenirNext-Regular" size:16.f];
    option.labelColor = [UIColor whiteColor];
    KISugarToast *toast = [[KISugarToast alloc] initWithOption:option];
    [self.view addSubview:toast];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

@end

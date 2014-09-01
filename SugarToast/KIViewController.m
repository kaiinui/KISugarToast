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
    option.backgroundColor = [UIColor blueColor];
    option.label = @"hoge";
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

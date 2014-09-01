//
//  KISugarToast.m
//  SugarToast
//
//  Created by kaiinui on 2014/09/02.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "KISugarToast.h"
#import "KISugarToastOption.h"

static UIInterfaceOrientation CRGetDeviceOrientation() {
    return [UIApplication sharedApplication].statusBarOrientation;
}

static CGFloat CRGetStatusBarWidthForOrientation(UIInterfaceOrientation orientation) {
	CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
	
    return (UIDeviceOrientationIsPortrait(orientation)) ?
	CGRectGetWidth(mainScreenBounds) :
	CGRectGetHeight(mainScreenBounds);
}

static CGFloat CRGetStatusBarWidth() {
    return CRGetStatusBarWidthForOrientation(CRGetDeviceOrientation());
}

static CGSize CRNotificationViewSize() {
    return CGSizeMake(CRGetStatusBarWidth(), 44.0f);
}

@implementation KISugarToast

- (id)initWithOption:(KISugarToastOption *)option {
    self = [self initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 44.0f, CRGetStatusBarWidth(), 44.0f)];
    if (self) {
        self.backgroundColor = option.backgroundColor;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

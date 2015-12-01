//
//  BaseAnimator.m
//  CustomTranslation
//
//  Created by scan on 15/11/27.
//  Copyright © 2015年 scan. All rights reserved.
//

#import "BaseAnimator.h"

@interface BaseAnimator ()

@end

@implementation BaseAnimator

- (instancetype)init
{
    return [self initWithDuration:0.35 options:0];
}

- (instancetype)initWithDuration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options
{
    self = [super init];
    if (self) {
        _duration = duration;
        _options = options;
    }
    return self;
}

#pragma mark - UIViewControllerAnimatedTransitioning

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return self.duration;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{

}

@end

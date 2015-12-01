//
//  CTSimpleAnimator.m
//  CustomTranslation
//
//  Created by scan on 15/12/1.
//  Copyright © 2015年 scan. All rights reserved.
//

#import "CTSimplePushAnimator.h"

@implementation CTSimplePushAnimator

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];

    [[transitionContext containerView] addSubview:toVC.view];
    [UIView transitionFromView:fromVC.view
                        toView:toVC.view
                      duration:self.duration
                       options:self.options
                    completion:^(BOOL finished) {

                        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
                    }];

}

@end

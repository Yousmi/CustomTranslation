//
//  CTSimplePercentPopAnimator.m
//  CustomTranslation
//
//  Created by scan on 15/12/1.
//  Copyright © 2015年 scan. All rights reserved.
//

#import "CTSimplePercentPopAnimator.h"

@implementation CTSimplePercentPopAnimator

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];

    toVC.view.alpha   = 0.f;

    [[transitionContext containerView] addSubview:toVC.view];

    [UIView animateWithDuration:self.duration
                          delay:0.0f
         usingSpringWithDamping:1 initialSpringVelocity:0.f options:0 animations:^{
             fromVC.view.alpha = 0.f;
             toVC.view.alpha   = 1.f;

         } completion:^(BOOL finished) {

             [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
         }];
    
}

@end

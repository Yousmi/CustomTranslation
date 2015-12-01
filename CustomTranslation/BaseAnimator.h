//
//  BaseAnimator.h
//  CustomTranslation
//
//  Created by scan on 15/11/27.
//  Copyright © 2015年 scan. All rights reserved.
//

@import UIKit;

@interface BaseAnimator : NSObject<UIViewControllerAnimatedTransitioning>

- (instancetype)initWithDuration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options;

@property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, assign) UIViewAnimationOptions options;

@end

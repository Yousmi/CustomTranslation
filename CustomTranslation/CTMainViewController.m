//
//  CTMainViewController.m
//  CustomTranslation
//
//  Created by scan on 15/11/27.
//  Copyright © 2015年 scan. All rights reserved.
//

#import "CTMainViewController.h"

#import "CTSimplePushAnimator.h"
#import "CTSimpleViewController.h"
#import "CTSimplePercentPopAnimator.h"

@interface CTMainViewController ()<UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIImageView *imagev;
@end

@implementation CTMainViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    self.navigationController.delegate = self;
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    _imagev.frame = CGRectMake(10, 74, self.view.frame.size.width - 20, (self.view.frame.size.width - 20)*3/4);
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    _imagev = [UIImageView new];
    _imagev.image = [UIImage imageNamed:@"img_fenjin_test"];//1280 * 960
    [self.view addSubview:_imagev];
    _imagev.userInteractionEnabled = YES;

    UITapGestureRecognizer *tapgesture = [[UITapGestureRecognizer alloc] init];
    [tapgesture addTarget:self action:@selector(push)];
    [_imagev addGestureRecognizer:tapgesture];
}

#pragma mark - Push Pop  UINavigationControllerDelegate

- (void)push
{
    CTSimpleViewController *vc = [[CTSimpleViewController alloc] init];
    self.navigationController.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                   animationControllerForOperation:(UINavigationControllerOperation)operation
                                                fromViewController:(UIViewController *)fromVC
                                                  toViewController:(UIViewController *)toVC
{
    if (operation == UINavigationControllerOperationPush) {
        CTSimplePushAnimator *animator = [[CTSimplePushAnimator alloc] init];
        animator.duration = 0.5;
        animator.options = UIViewAnimationOptionTransitionFlipFromTop;
        return animator;

    }else if (operation == UINavigationControllerOperationPop) {
        CTSimplePercentPopAnimator *animator = [[CTSimplePercentPopAnimator alloc] init];
        return animator;
    }
    return nil;
}

@end

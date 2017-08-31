//
//  LINRootViewController.m
//  LIN-Akimon
//
//  Created by yu on 2017/8/30.
//  Copyright © 2017年 LIN. All rights reserved.
//

#import "LINRootViewController.h"

@interface LINRootViewController ()<UITabBarControllerDelegate>

@property (nonatomic,strong) UIViewController *viewController1;
@property (nonatomic,strong) UIViewController *viewController2;
@property (nonatomic,strong) UIViewController *viewController3;
@property (nonatomic,strong) UIViewController *viewController4;
@property (nonatomic,strong) UIViewController *viewController5;

@property (nonatomic,strong) UINavigationController *navigationController1;
@property (nonatomic,strong) UINavigationController *navigationController2;
@property (nonatomic,strong) UINavigationController *navigationController3;
@property (nonatomic,strong) UINavigationController *navigationController4;
@property (nonatomic,strong) UINavigationController *navigationController5;

@end

@implementation LINRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self setupRootViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void) setupRootViewController{
    _viewController1 = [UIViewController new];
    _viewController2 = [UIViewController new];
    _viewController3 = [UIViewController new];
    _viewController4 = [UIViewController new];
    _viewController5 = [UIViewController new];
    
    _navigationController1 = [[UINavigationController alloc]initWithRootViewController:_viewController1];
    _navigationController2 = [[UINavigationController alloc]initWithRootViewController:_viewController2];
    _navigationController3 = [[UINavigationController alloc]initWithRootViewController:_viewController3];
    _navigationController4 = [[UINavigationController alloc]initWithRootViewController:_viewController4];
    _navigationController5 = [[UINavigationController alloc]initWithRootViewController:_viewController5];
    
    _navigationController1.tabBarItem.title = @"1";
    _navigationController1.tabBarItem.badgeValue = @"角标";
    _navigationController2.tabBarItem.title = @"2";
    _navigationController3.tabBarItem.title = @"3";
    _navigationController4.tabBarItem.title = @"4";
    _navigationController5.tabBarItem.title = @"5";

    
    self.viewControllers = @[_navigationController1,_navigationController2,_navigationController3,_navigationController4,_navigationController5];
    
    //设置进入程序后默认选中第几个
    self.selectedIndex = 0;
    //设置代理人
    self.delegate = self;
}

//当点击某个标签时,tabBar触发该方法
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    DebugLog(@"%ld",tabBarController.selectedIndex);
    
}


@end

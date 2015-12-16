//
//  ViewController.m
//  YCButton
//
//  Created by Berton on 15/12/10.
//  Copyright © 2015年 Berton. All rights reserved.
//

#import "ViewController.h"
#import "YCButton.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpHighlightBtn];
    
    [self setUpSelBtn];
}

- (void)setUpHighlightBtn{

    CGRect imgFrame = CGRectMake(0, 0, 50, 50);
    CGRect titleFrame = CGRectMake(0, 50, 50, 20);
    
    NSString *img = @"mainNormal";
    NSString *highImg = @"dingyue_guide_tip1";
    
    YCButton *btn = [YCButton buttonWithType:UIButtonTypeCustom];
    
    // 自定义按钮的默认及高亮状态下的图片和标题
    [btn setButtonWithImageName:img highImageName:highImg title:@"默认" imageFrame:imgFrame titleFrame:titleFrame];
    
    [btn setTitle:@"高亮" forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [UIColor greenColor];
    btn.frame = CGRectMake(100, 100, 50, 70);
    [self.view addSubview:btn];
}

- (void)setUpSelBtn{
    
    CGRect imgFrame = CGRectMake(0, 0, 30, 30);
    CGRect titleFrame = CGRectMake(0, 30, 30, 20);
    
    NSString *img = @"mainNormal";
    NSString *selImg = @"mainSeleted";
    
    YCButton *btn1 = [YCButton buttonWithType:UIButtonTypeCustom];
    
    // 自定义按钮的默认及选中状态下的图片和标题
    [btn1 setButtonWithImageName:img selImageName:selImg title:@"默认" selTitle:@"选中" imageFrame:imgFrame titleFrame:titleFrame];
    
    
    btn1.backgroundColor = [UIColor cyanColor];
    btn1.frame = CGRectMake(200, 100, 30, 50);
    [self.view addSubview:btn1];
    
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnClick:(UIButton *)btn{
    
    btn.selected = !btn.selected;
}

@end

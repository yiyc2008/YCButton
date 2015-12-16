//
//  YCButton.m
//  YCButton
//
//  Created by Berton on 15/12/10.
//  Copyright © 2015年 Berton. All rights reserved.
//

#import "YCButton.h"

@interface YCButton ()

/** imageFrame*/
@property (nonatomic,assign) CGRect imageFrame;
/** titleFrame*/
@property (nonatomic,assign) CGRect titleFrame;

@end

@implementation YCButton

- (void)setButtonWithImageName:(NSString *)ImageName selImageName:(NSString *)selImageName title:(NSString *)title selTitle:(NSString *)selTitle imageFrame:(CGRect)imageFrame titleFrame:(CGRect)titleFrame{
    
    [self setImage:[UIImage imageNamed:ImageName] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:selImageName] forState:UIControlStateSelected];
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitle:selTitle forState:UIControlStateSelected];
    self.imageView.contentMode = UIViewContentModeCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    // 设置文字的字体
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    
    // 选中时文字的颜色
    UIColor *selColor = [UIColor colorWithRed:233 / 255.0 green:48/ 255.0 blue:57 / 255.0 alpha:1];
    // 正常时候文字颜色
    UIColor *nolColor = [UIColor lightGrayColor];
    
    [self setTitleColor:selColor forState:UIControlStateSelected];
    [self setTitleColor:nolColor forState:UIControlStateNormal];
    
    self.imageFrame = imageFrame;
    self.titleFrame = titleFrame;
}

- (void)setButtonWithImageName:(NSString *)ImageName highImageName:(NSString *)highImageName title:(NSString *)title imageFrame:(CGRect)imageFrame titleFrame:(CGRect)titleFrame{
    
    [self setImage:[UIImage imageNamed:ImageName] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [self setTitle:title forState:UIControlStateNormal];
    self.imageView.contentMode = UIViewContentModeCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    // 设置文字的字体
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    
    // 选中时文字的颜色
    UIColor *selColor = [UIColor colorWithRed:233 / 255.0 green:48/ 255.0 blue:57 / 255.0 alpha:1];
    // 正常时候文字颜色
    UIColor *nolColor = [UIColor lightGrayColor];
    
    [self setTitleColor:selColor forState:UIControlStateSelected];
    [self setTitleColor:nolColor forState:UIControlStateNormal];
    
    self.imageFrame = imageFrame;
    self.titleFrame = titleFrame;
}


-(CGRect)imageRectForContentRect:(CGRect)contentRect{

    return self.imageFrame;
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    
    return self.titleFrame;
}

@end

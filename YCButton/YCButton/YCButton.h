//
//  YCButton.h
//  YCButton
//
//  Created by Berton on 15/12/10.
//  Copyright © 2015年 Berton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCButton : UIButton

- (void)setButtonWithImageName:(NSString *)ImageName selImageName:(NSString *)selImageName title:(NSString *)title selTitle:(NSString *)selTitle imageFrame:(CGRect)imageFrame titleFrame:(CGRect)titleFrame;

- (void)setButtonWithImageName:(NSString *)ImageName highImageName:(NSString *)highImageName title:(NSString *)title imageFrame:(CGRect)imageFrame titleFrame:(CGRect)titleFrame;

@end

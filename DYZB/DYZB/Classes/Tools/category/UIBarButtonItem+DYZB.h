//
//  UIBarButtonItem+DYZB.h
//  DYZB
//
//  Created by Apple's Mac on 2017/1/12.
//  Copyright © 2017年 Apple's Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (DYZB)

/*
 description:
        BarButtonItem的便捷初始化方法
 params:
        imageName       :普通状态下显示的图片
        highImageName   :高亮状态下显示的图片
        size:           :Item的size
        target:         :对应的target
        action:         :响应方法
 return:
        返回UIbarButtonItem的实例
 *********************************************************************************************/

- (instancetype)initWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName size:(CGSize)size target:(id)target action:(SEL)action;

@end

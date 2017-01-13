//
//  UIBarButtonItem+DYZB.m
//  DYZB
//
//  Created by Apple's Mac on 2017/1/12.
//  Copyright © 2017年 Apple's Mac. All rights reserved.
//
#import <Masonry/Masonry.h>
#import "UIBarButtonItem+DYZB.h"

@implementation UIBarButtonItem (DYZB)

- (instancetype)initWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName size:(CGSize)size target:(id)target action:(SEL)action
{

    UIButton *itemBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if (target && action) {
        [itemBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    if (imageName) {
        [itemBtn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    if (highImageName) {
        [itemBtn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    }
    if (size.height == 0 && size.height == 0 ) {
        [itemBtn sizeToFit];
    }else{
        [itemBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(size);
        }];
    }
    
    return [self initWithCustomView:itemBtn];
}

@end

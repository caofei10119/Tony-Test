//
//  UIColor+Addition.h
//  Test
//
//  Created by Administrator on 4/23/15.
//  Copyright (c) 2015 CaoFei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Addition)

+ (UIColor*)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;
+ (UIColor*)colorWithHex:(NSString*)hex alpha:(CGFloat)alpha;

@end

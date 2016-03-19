//
//  UIView+Drawing.m
//  PixelPainter
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 DreamDriver. All rights reserved.
//

#import "UIView+Drawing.h"

@implementation UIView (Drawing)


- (void)drawInViewing {
    
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    [image drawInRect:self.bounds];
    
    UIGraphicsEndImageContext();
    [self setNeedsDisplay];

}

@end

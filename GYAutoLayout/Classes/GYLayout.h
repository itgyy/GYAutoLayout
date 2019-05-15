//
//  GYLayout.h
//  GYAutoLayout_Example
//
//  Created by gyy on 2019/5/15.
//  Copyright © 2019 guyaoyao. All rights reserved.
//

#ifndef GYLayout_h
#define GYLayout_h

#import "GYLayoutConfig.h"


/**
 CGRectMake适配
 @param x x
 @param y y
 @param width width
 @param height height
 @return 适配后的Rect
 */
CG_INLINE CGRect
GY_CGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
    CGRect rect;
    GYLayoutConfig *config = [GYLayoutConfig share];
    rect.origin.x = x *config.autoSizeScaleX;
    rect.origin.y = y *config.autoSizeScaleY;
    rect.size.width = width *config.autoSizeScaleX;
    rect.size.height = height *config.autoSizeScaleY;
    return rect;
}


/**
 CGPointMake适配

 @param x x
 @param y y
 @return 适配后的Point
 */
CG_INLINE CGPoint
GY_CGPointMake(CGFloat x, CGFloat y){
    CGPoint point;
    GYLayoutConfig *config = [GYLayoutConfig share];
    point.x = x *config.autoSizeScaleX;
    point.y = y *config.autoSizeScaleY;
    return point;
}


/**
 Font适配

 @param fontSize
 @return
 */
CG_INLINE CGFloat
GY_UIFont(CGFloat fontSize){
    CGFloat size = 0.0;
    GYLayoutConfig *config = [GYLayoutConfig share];
    size = fontSize *config.autoSizeScaleY;
    return size;
}

CG_INLINE CGFloat
GY_Width(CGFloat width){
    CGFloat size = 0.0;
    GYLayoutConfig *config = [GYLayoutConfig share];
    size = width *config.autoSizeScaleX;
    return size;
}


CG_INLINE CGFloat
GY_Height(CGFloat height){
    CGFloat size = 0.0;
    GYLayoutConfig *config = [GYLayoutConfig share];
    size = height *config.autoSizeScaleY;
    return size;
}

#endif /* GYLayout_h */

//
//  GYLayout.h
//  GYAutoLayout_Example
//
//  Created by gyy on 2019/5/15.
//  Copyright © 2019 guyaoyao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    GYLayoutPhoneScreenIphone4 = 0,
    GYLayoutPhoneScreenIphone5 = 1,
    GYLayoutPhoneScreenIphone6 = 2,
    GYLayoutPhoneScreenIphone6p = 3,
    GYLayoutPhoneScreenIphoneX = 4
} GYLayoutPhoneScreen;



NS_ASSUME_NONNULL_BEGIN

@interface GYLayoutConfig : NSObject



/**
 参考屏幕尺寸
 */
@property (assign, nonatomic) GYLayoutPhoneScreen phoneScreen;


/**
 X缩放比例
 */
@property (assign, nonatomic) CGFloat autoSizeScaleX;

/**
 Y缩放比例
 */
@property (assign, nonatomic) CGFloat autoSizeScaleY;


/**
 字体缩放比例
 */
@property (assign, nonatomic) CGFloat autoSizeScaleFont;



/**
 实例化对象

 @return 单利类
 */
+(instancetype)share;





@end

NS_ASSUME_NONNULL_END

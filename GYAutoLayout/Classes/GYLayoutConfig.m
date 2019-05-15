//
//  GYLayout.m
//  GYAutoLayout_Example
//
//  Created by gyy on 2019/5/15.
//  Copyright © 2019 guyaoyao. All rights reserved.
//

#import "GYLayoutConfig.h"



#define GY_K_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define GY_K_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation GYLayoutConfig

+(instancetype)share{
    static GYLayoutConfig *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[GYLayoutConfig alloc] init];
    });
    return manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.autoSizeScaleX = 1;
        self.autoSizeScaleY = 1;
        self.autoSizeScaleFont = 1;
        self.phoneScreen = GYLayoutPhoneScreenIphone6;
    }
    return self;
}

- (void)setPhoneScreen:(GYLayoutPhoneScreen)phoneScreen{
    CGFloat K_PHONE_SCREEN_WIDTH = 0;
    CGFloat K_PHONE_SCREEN_HEIGHT = 0;
    switch (phoneScreen) {
        case GYLayoutPhoneScreenIphone4:
            {
                K_PHONE_SCREEN_WIDTH = 320.0f;
                K_PHONE_SCREEN_HEIGHT = 480.0f;
            }
            break;
        case GYLayoutPhoneScreenIphone5:
        {
            K_PHONE_SCREEN_WIDTH = 320.0f;
            K_PHONE_SCREEN_HEIGHT = 568.0f;
        }
            break;
        case GYLayoutPhoneScreenIphone6:
        {
            K_PHONE_SCREEN_WIDTH = 375.0f;
            K_PHONE_SCREEN_HEIGHT = 667.0f;
        }
            break;
        case GYLayoutPhoneScreenIphone6p:
        {
            K_PHONE_SCREEN_WIDTH = 414.0f;
            K_PHONE_SCREEN_HEIGHT = 736.0f;
        }
            break;
            
        default:
            break;
    }
    
    self.autoSizeScaleX = GY_K_SCREEN_WIDTH / K_PHONE_SCREEN_WIDTH;
    self.autoSizeScaleY = GY_K_SCREEN_HEIGHT / K_PHONE_SCREEN_HEIGHT;
    self.autoSizeScaleFont = self.autoSizeScaleY;
}



@end

//
//  tt.m
//  testautolay
//
//  Created by liangshun on 18/7/1.
//  Copyright © 2018年 liangshun. All rights reserved.
//

#import "tt.h"
#import <UIKit/UIKit.h>


@implementation tt
+(NSInteger)GetHeight
{
    CGRect rectStatus = [[UIApplication sharedApplication] statusBarFrame];
    NSLog(@"status width - %f", rectStatus.size.width); // 宽度
    NSLog(@"status height - %f", rectStatus.size.height);  // 高度
    return 0;
}
@end

//
//  myAutolayView.m
//  testautolay
//
//  Created by liangshun on 18/7/1.
//  Copyright © 2018年 liangshun. All rights reserved.
//

#import "myAutolayView.h"
#import "tt.h"

@implementation myAutolayView

-(id)init
{
    if(self=[super init])
    {
        NSLog(@"count1:%@",[self.view_first valueForKey:@"retainCount"]);
        self.backgroundColor=[UIColor redColor];
        _view_first=[UIView new];
        NSLog(@"count:%@",[self.view_first valueForKey:@"retainCount"]);
        _view_first.backgroundColor=[UIColor yellowColor];
        [self addSubview:_view_first];
        NSLog(@"count2:%@",[self.view_first valueForKey:@"retainCount"]);
        
        _view_second=[UIView new];
        _view_second.backgroundColor=[UIColor greenColor];
        [self addSubview:_view_second];
        
        _view_third=[UIView new];
        [self addSubview:_view_third];
        _view_third.backgroundColor=[UIColor blueColor];
    }
    NSLog(@"count3:%@",[self.view_first valueForKey:@"retainCount"]);
    return self;
}


+ (BOOL)requiresConstraintBasedLayout
{
    return YES;
}


-(void)updateConstraints
{
    NSLog(@"count4:%@",[self.view_first valueForKey:@"retainCount"]);
    [super updateConstraints];
    NSLog(@"count5:%@",[self.view_first valueForKey:@"retainCount"]);
}

@end
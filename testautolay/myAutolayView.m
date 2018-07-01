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
        self.backgroundColor=[UIColor redColor];
        _view_first=[UIView new];
        _view_first.backgroundColor=[UIColor yellowColor];
        [self addSubview:_view_first];
        
        _view_second=[UIView new];
        _view_second.backgroundColor=[UIColor greenColor];
        [self addSubview:_view_second];
        
        _view_third=[UIView new];
        [self addSubview:_view_third];
        _view_third.backgroundColor=[UIColor blueColor];
    }
    return self;
}


+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}


-(void)updateConstraints
{
    
    [super updateConstraints];
}

@end
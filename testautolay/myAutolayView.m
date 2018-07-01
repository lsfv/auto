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
    UIEdgeInsets padding=UIEdgeInsetsMake(25, 6, 52, 6);
    
    [_view_first mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_offset(padding.top);
        make.left.mas_offset(padding.left);
        make.right.mas_offset(-padding.right);
        make.height.mas_equalTo(@100);
    }];
    
    [_view_second mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_view_first.mas_bottom).mas_offset(@1);
        make.left.mas_equalTo(_view_first);
        make.right.mas_equalTo(_view_first);
        make.height.mas_equalTo(@50);
    }];
    [_view_third mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_view_second.mas_bottom).mas_offset(@1);
        make.left.mas_equalTo(_view_first);
        make.right.mas_equalTo(_view_first);
        make.bottom.mas_equalTo(self.mas_bottom).offset(-padding.bottom);
    }];
    
    [super updateConstraints];
}

@end
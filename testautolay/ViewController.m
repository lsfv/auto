//
//  ViewController.m
//  testautolay
//
//  Created by liangshun on 18/7/1.
//  Copyright © 2018年 liangshun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic)myAutolayView *myview;
@end

@implementation ViewController

-(void)loadView
{
    self.view=_myview=[myAutolayView new];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
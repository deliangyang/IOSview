//
//  ViewController.m
//  UIWindow
//
//  Created by yangdeliang on 9/20/15.
//  Copyright (c) 2015 yangdeliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    // set size
    view.frame   = CGRectMake(100, 100, 50, 50);
    // set background color
    view.backgroundColor = [UIColor redColor];
    // add view into parent view
    [self.view addSubview:view];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

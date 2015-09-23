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
    view.frame   = CGRectMake(10, 30, 355, 627);
    // set background color
    view.backgroundColor = [UIColor redColor];
    // add view into parent view
    [self.view addSubview:view];
    
    NSLog(@"width:%f, height:%f", [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 100, 300, 30);
    label.backgroundColor = [UIColor yellowColor];
    // label add text
    label.text = @"Hello world";
    // text center
    label.textAlignment = NSTextAlignmentCenter;
    
    // user define color
    //opacity clearColor
    label.textColor = [UIColor colorWithRed:0.3 green:0.4 blue:0.4 alpha:0.4];
    
    [self.view addSubview:label];
    
    // image view
//    NSString *path = [[NSBundle mainBundle] resourcePath];
//    NSString *imagePath = [NSString stringWithFormat:@"%@/bbb.jpg", path];
//    
//    UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
//    
//    // need carrier
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
//    imageView.frame = CGRectMake(10, 10, 300, 300);
//    
//    [self.view addSubview:imageView];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor greenColor];
    btn.frame = CGRectMake(20, 20, 100, 40);

    [btn addTarget:self action:@selector(showHello) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showHello {
    NSLog(@"just test for hello world");
    UIAlertView * alter = [[UIAlertView alloc]
                           initWithTitle:@"just test"
                           message:@"hello world"
                           delegate:self
                           cancelButtonTitle:@"test"
                           otherButtonTitles:@"cancel"];
    
    [alter show];
}



@end

//
//  ViewController.m
//  Wheaton Demo
//
//  Created by Clayton Rieck on 9/24/14.
//  Copyright (c) 2014 WD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat screenWidth = CGRectGetWidth(self.view.frame);
    CGFloat screenHeight = CGRectGetHeight(self.view.frame);
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, screenWidth/2, screenWidth, screenHeight/8)];
    textLabel.text = @"Welcome to the Demo App!";
    textLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:textLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

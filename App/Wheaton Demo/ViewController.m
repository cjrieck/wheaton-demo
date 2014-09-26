//
//  ViewController.m
//  Wheaton Demo
//
//  Created by Clayton Rieck on 9/24/14.
//  Copyright (c) 2014 WD. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

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
    
    
    UIView *purpleRectangle = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 200.0f, 100.0f, 100.0f)];
    purpleRectangle.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:purpleRectangle];
    
    [UIView animateWithDuration:5.0f
                          delay:2.0f
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         purpleRectangle.alpha = 0.0f;
                     }
                     completion:^(BOOL finished){
                         textLabel.text = @"Yaasssssss";
                     }];
    
    UIButton *pushButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 100, 50)];
    pushButton.backgroundColor = [UIColor blueColor];
    [pushButton addTarget:self action:@selector(goToNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
}

- (void)goToNext
{
    SecondViewController *nextVC = [[SecondViewController alloc] init];
    [self presentViewController:nextVC
                       animated:YES
                     completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

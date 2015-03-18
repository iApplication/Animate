//
//  MainViewController.m
//  Animate
//
//  Created by locky1218 on 15-3-15.
//  Copyright (c) 2015年 locky1218. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MainView * view = [[MainView alloc] init];
    self.view = view;
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 20, 100, 40)];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(move) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //定时器
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(onTimer:) userInfo:nil repeats: YES];
    
}

- (void)onTimer:(NSTimer *)sender
{
    NSLog(@"this is timer!");
    //[sender invalidate];//定时器结束
    [self.view setNeedsDisplay];
}

- (void)move
{
    //NSLog(@"move!");
    [self.view setNeedsDisplay];//清除屏幕 在rect函数中的才会被清除，控件不会被清除
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

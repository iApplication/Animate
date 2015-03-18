//
//  MainView.m
//  Animate
//
//  Created by locky1218 on 15-3-15.
//  Copyright (c) 2015年 locky1218. All rights reserved.
//

#import "MainView.h"

@implementation MainView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"rect clears and redraw!");
    point.y += 5;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1);
    CGContextStrokeEllipseInRect(context, CGRectMake(point.x, point.y, 100, 100));
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        self.backgroundColor =[UIColor blackColor];
        point.x = 50;
        point.y = 50;
    }
    return self;
}

@end

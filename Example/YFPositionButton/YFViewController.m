//
//  YFViewController.m
//  YFPositionButton
//
//  Created by 1029883589@qq.com on 06/03/2021.
//  Copyright (c) 2021 1029883589@qq.com. All rights reserved.
//

#import "YFViewController.h"
#import "UIButton+Position.h"

@interface YFViewController ()

@end
// 123
@implementation YFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightTextColor];
    
    UIButton *btn1 = [self createButton:@"left" origin:CGPointMake(0, 0)];
    [self.view addSubview:btn1];
    [btn1 layoutButtonWithEdgeInsetsStyle:YFPositionButtonTextLeft imageTitleSpace:5];
    
    UIButton *btn2 = [self createButton:@"right" origin:CGPointMake(0, 150)];
    [self.view addSubview:btn2];
    [btn2 layoutButtonWithEdgeInsetsStyle:YFPositionButtonTextRight imageTitleSpace:5];

    
    UIButton *btn3 = [self createButton:@"top" origin:CGPointMake(0, 300)];
    [self.view addSubview:btn3];
    [btn3 layoutButtonWithEdgeInsetsStyle:YFPositionButtonTextTop imageTitleSpace:5];

    
    UIButton *btn4 = [self createButton:@"bottom" origin:CGPointMake(0, 450)];
    [self.view addSubview:btn4];
    [btn4 layoutButtonWithEdgeInsetsStyle:YFPositionButtonTextBottom imageTitleSpace:30];
    
    
    UIButton *btn5 = [self createButton:@"TextOnly" origin:CGPointMake(150, 0)];
    [self.view addSubview:btn5];
    [btn5 layoutButtonWithEdgeInsetsStyle:YFPositionButtonTextOnly imageTitleSpace:5];
    
    UIButton *btn6 = [self createButton:@"ImgOnly" origin:CGPointMake(150, 150)];
    [self.view addSubview:btn6];
    [btn6 layoutButtonWithEdgeInsetsStyle:YFPositionButtonImgOnly imageTitleSpace:5];

    UIButton *btn7 = [self createButton:@"middle" origin:CGPointMake(150, 300)];
    [btn7 setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [self.view addSubview:btn7];
    [btn7 layoutButtonWithEdgeInsetsStyle:YFPositionButtonTextMiddle imageTitleSpace:5];
    
    
    UIButton *btn8 = [self createButton:@"bottomFixed" origin:CGPointMake(150, 450)];
    [self.view addSubview:btn8];
    [btn8 layoutButtonWithEdgeInsetsStyle:YFPositionButtonTextBottomFixedText imageTitleSpace:30];

}

- (UIButton *)createButton:(NSString *)title origin:(CGPoint)orinin {
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(orinin.x, orinin.y, 100, 100)];
    [btn1 setTitle:title forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"2"] forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor redColor];
    btn1.titleLabel.backgroundColor = [UIColor blueColor];
    btn1.imageView.backgroundColor = [UIColor yellowColor];
    btn1.titleLabel.font = [UIFont systemFontOfSize:14];
    return btn1;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

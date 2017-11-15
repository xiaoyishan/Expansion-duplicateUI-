//
//  ViewController.m
//  Expansion(duplicateUI)
//
//  Created by Sundear on 2017/6/22.
//  Copyright © 2017年 xiexin. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Duplicate.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIView *myView;


@property (weak, nonatomic) IBOutlet UIButton *IBbutton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *NewLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 50, 30)];
    NewLabel.clipsToBounds = YES;
    NewLabel.backgroundColor = [UIColor whiteColor];
    NewLabel.layer.cornerRadius = 14;
    NewLabel.layer.borderColor = [UIColor redColor].CGColor;
    NewLabel.layer.borderWidth =4;
    [_myButton addSubview:NewLabel];
    
    UILabel *Sublabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 30, 10)];
    Sublabel.clipsToBounds = YES;
    Sublabel.backgroundColor = [UIColor orangeColor];
    Sublabel.layer.cornerRadius = 2;
    Sublabel.layer.borderColor = [UIColor purpleColor].CGColor;
    Sublabel.layer.borderWidth =2;
    [NewLabel addSubview:Sublabel];
    
    


    
    
    UIButton *copyBtn = [_myButton duplicate];
    UILabel *copyL = [_myLabel duplicate];
    UIView *copyView = [_myView duplicate];
    

    NSArray *viewArr = @[copyBtn,copyL, copyView];

    for (UIView *view in viewArr) {
        CGRect newFrame = view.frame;
        newFrame.origin.y += 100;
        view.frame=newFrame;
        [self.view addSubview:view];
    }
    
    
    // 代码测试
    UIButton *NewButton = [UIButton buttonWithType:UIButtonTypeSystem];
    NewButton.frame = CGRectMake(50, 300, 330, 40);
    NewButton.backgroundColor = [UIColor cyanColor];
    [NewButton setTitle:@"代码测试：字体是否会变大？" forState:0];
    NewButton.titleLabel.font = [UIFont systemFontOfSize:23];
    [self.view addSubview: NewButton];
    
    UIButton *copyNew = [NewButton duplicate];
    copyNew.frame = CGRectMake(50, 350, 330, 40);
    [self.view addSubview:copyNew];
    
    
    // IB测试
    UIButton *copyIBNew = [_IBbutton duplicate];
    CGRect newFrame = _IBbutton.frame;
    newFrame.origin.y += 50;
    copyIBNew.frame=newFrame;
    [self.view addSubview:copyIBNew];
    
    
//    // 混合测试
//    [NewButton addSubview:_IBbutton];
//    _IBbutton.frame = CGRectMake(30, 10, 200, 30);
}



@end

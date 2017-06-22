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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *copyBtn = [_myButton duplicate];
    UILabel *copyL = [_myLabel duplicate];
    UIView *copyView = [_myView duplicate];

    NSArray *viewArr = @[copyBtn,copyL, copyView];

    for (UIView *view in viewArr) {
        CGRect newFrame = view.frame;
        newFrame.origin.y += 100;
        view.frame=newFrame;

//        view.backgroundColor = [UIColor purpleColor];
        [self.view addSubview:view];
    }
}



@end

//
//  MyWorkFlowsViewController.m
//  Test
//
//  Created by Administrator on 4/23/15.
//  Copyright (c) 2015 CaoFei. All rights reserved.
//

#import "MyWorkFlowsViewController.h"

static CGFloat menuButtonsAnimDuration = .35f;

@interface MyWorkFlowsViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *menuButtons;

@end

@implementation MyWorkFlowsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self refresh];
}

#pragma mark - Internal Functions

- (void)refresh {
    for (UIButton *button in self.menuButtons) {
        button.alpha = 0.f;
    }
    [self animateMenuButtons:0];
}

- (void)animateMenuButtons:(NSInteger)index {
    if (index == self.menuButtons.count - 1) {
        return;
    }
    
    UIButton *button = self.menuButtons[index];
    [UIView animateWithDuration:menuButtonsAnimDuration animations:^{
        button.alpha = 1.f;
    } completion:^(BOOL finished) {
        [self animateMenuButtons:index + 1];
    }];
}

@end

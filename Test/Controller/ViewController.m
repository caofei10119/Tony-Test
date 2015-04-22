//
//  ViewController.m
//  Test
//
//  Created by Administrator on 4/22/15.
//  Copyright (c) 2015 CaoFei. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Addition.h"

static NSString *MyWorkFlowsSegueIdentifier = @"viewController1";
static NSString *GallerySegueIdentifier = @"viewController2";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initializeNavBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Internal Functions

- (void)initializeNavBar {
    // set navigation bar color
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithHex:@"#3870dd" alpha:1.f];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    // set custom navigation bar title view
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"My Workflows",
                                                                                      @"Gallery"]];
    segmentedControl.selectedSegmentIndex = 0;
    [segmentedControl addTarget:self action:@selector(segmentedControlValueChanged:) forControlEvents:UIControlEventValueChanged];
    segmentedControl.tintColor = [UIColor whiteColor];
    self.navigationItem.titleView = segmentedControl;
    
    // set bar buttons
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13.f]} forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
}

#pragma mark - IBActions

- (IBAction)segmentedControlValueChanged:(id)sender {
    UISegmentedControl *segmentedControl = sender;
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            [self performSegueWithIdentifier:MyWorkFlowsSegueIdentifier sender:nil];
            break;
        case 1:
            [self performSegueWithIdentifier:GallerySegueIdentifier sender:nil];
            break;
            
        default:
            break;
    }
}

@end

//
//  FirstViewController.m
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "FirstViewController.h"
#import "Blindside.h"

@interface FirstViewController ()

@property (strong, nonatomic) SecondViewControllerProvider *secondViewControllerProvider;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithApi:(id<MyApi>)defaultApi
   WithSecondVCProvider:(SecondViewControllerProvider *)defaultSecondViewControllerProvider
{
    self = [super init];
    
    if (self) {
        _api = defaultApi;
        _secondViewControllerProvider = defaultSecondViewControllerProvider;
    }
    
    return self;
}

+ (BSInitializer *)bsInitializer {
    return [BSInitializer initializerWithClass:self
                                      selector:@selector(initWithApi:WithSecondVCProvider:)
                                  argumentKeysArray:@[@"myApi",
                                                      [SecondViewControllerProvider class]]];
}

// Actions:
- (IBAction)goToSecondViewController:(UIButton *)sender {
    // Call implementation from injected protocol
    [_api firstProcess];
    [_api secondProcess];
    [_api thirdProcess];
    
    // Return next viewcontroller from provider and present it to user
    //_secondViewControllerProvider = [[SecondViewControllerProvider alloc] init];
    
    UIViewController *secondViewController = [_secondViewControllerProvider provideController];
    
    [self presentViewController:secondViewController animated:YES completion:nil];
}

@end

//
//  FirstViewController.m
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewControllerProvider.h"
#import "Blindside.h"

@interface FirstViewController ()

@property (strong, nonatomic) SecondViewControllerProvider *provider;

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
{
    self = [super init];
    
    if (self) {
        _api = defaultApi;
    }
    
    return self;
}

+ (BSInitializer *)bsInitializer {
    return [BSInitializer initializerWithClass:self
                                      selector:@selector(initWithApi:)
                                  argumentKeys:@"myApi", nil];
}

// Actions:
- (IBAction)goToSecondViewController:(UIButton *)sender {
    _provider = [[SecondViewControllerProvider alloc] init];
    
    UIViewController *secondViewController = [_provider provideController];
    
    [self presentViewController:secondViewController animated:YES completion:nil];
}

@end

//
//  SecondViewControllerProvider.m
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "SecondViewControllerProvider.h"
#import "SecondViewController.h"

@implementation SecondViewControllerProvider

- (UIViewController *)provideController
{
    return [self.injector getInstance:[SecondViewController class]];
}

@end

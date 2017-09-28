//
//  RootViewControllerProvider.m
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "RootViewControllerProvider.h"
#import "FirstViewController.h"

@implementation RootViewControllerProvider

- (UIViewController *)provideController
{
    return [self.injector getInstance:[FirstViewController class]];
}

@end

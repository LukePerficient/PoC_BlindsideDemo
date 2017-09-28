//
//  SecondViewControllerProvider.h
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ParentProvider.h"

@interface SecondViewControllerProvider : ParentProvider

- (UIViewController *)provideController;

@end

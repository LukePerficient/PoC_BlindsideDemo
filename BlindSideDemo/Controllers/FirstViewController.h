//
//  FirstViewController.h
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyApi.h"

@interface FirstViewController : UIViewController

@property (strong, nonatomic) id<MyApi> api;

- (id)initWithApi:(id<MyApi>)defaultApi;

@end

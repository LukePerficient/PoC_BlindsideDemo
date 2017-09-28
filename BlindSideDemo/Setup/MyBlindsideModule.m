//
//  MyBlindsideModule.m
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "MyBlindsideModule.h"
#import "MyApiImplementation.h"

@implementation MyBlindsideModule

- (void)configure:(id<BSBinder>)binder {
    id<MyApi> apiInstance = [[MyApiImplementation alloc] initWithEndpoint:@"http://api.mycompany.com"];
    [binder bind:@"myApi" toInstance:apiInstance];
    
}

@end

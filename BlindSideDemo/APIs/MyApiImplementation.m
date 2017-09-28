//
//  MyApiImplementation.m
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "MyApiImplementation.h"

@implementation MyApiImplementation

- (id)initWithEndpoint:(NSString *)defaultEndpoint
{
    self = [super init];
    
    if (self) {
        _endpoint = defaultEndpoint;
    }
    
    return self;
}

- (void)firstProcess
{
    NSLog(@"First Process...");
}

- (void)secondProcess
{
    NSLog(@"Second Process...");
}

- (void)thirdProcess
{
    NSLog(@"Third Process...");
}

@end

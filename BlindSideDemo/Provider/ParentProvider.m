//
//  ParentProvider.m
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "ParentProvider.h"
#import "MyBlindsideModule.h"

@implementation ParentProvider

- (id)init
{
    self = [super init];
    
    if (self) {
        MyBlindsideModule *module = [[MyBlindsideModule alloc] init];
        _injector = [Blindside injectorWithModule:module];
    }
    
    return self;
}

@end

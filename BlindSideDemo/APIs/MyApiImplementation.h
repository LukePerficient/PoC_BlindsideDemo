//
//  MyApiImplementation.h
//  BlindSideDemo
//
//  Created by DDC.Mac2 on 9/28/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#ifndef MyApiImplementation_h
#define MyApiImplementation_h

#import <Foundation/Foundation.h>
#import "MyApi.h"

@interface MyApiImplementation : NSObject<MyApi>

@property (strong, nonatomic) NSString *endpoint;

- (id)initWithEndpoint:(NSString *)defaultEndpoint;

@end

#endif /* MyApiImplementation_h */

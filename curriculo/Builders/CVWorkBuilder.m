//
//  CVWorkBuilder.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVWorkBuilder.h"
#import "CVWork.h"

@implementation CVWorkBuilder

- (CVWork*)buildFromDictionary:(NSDictionary *)dictionary {
    CVWork* work = [[CVWork alloc] init];
    work.name = dictionary[@"name"];
    work.phoneNumber = dictionary[@"phone"];
    work.duration = dictionary[@"duration"];
    work.detail = dictionary[@"detail"];
    
    return work;
}

@end

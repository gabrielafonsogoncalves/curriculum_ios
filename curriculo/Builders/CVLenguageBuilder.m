//
//  CVLenguageBuilder.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVLenguageBuilder.h"

@implementation CVLenguageBuilder

- (CVLenguage*)buildFromDictionary:(NSDictionary *)dictionary {
    CVLenguage* lenguage = [[CVLenguage alloc] init];
    lenguage.name = dictionary[@"name"];
    lenguage.level = dictionary[@"level"];
    
    return lenguage;
}

@end

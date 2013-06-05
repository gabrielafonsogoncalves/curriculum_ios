//
//  CVEducationBuilder.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/1/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVEducationBuilder.h"
#import "CVEducation.h"

@implementation CVEducationBuilder

- (CVEducation*)buildFromDictionary:(NSDictionary *)dictionary {
    CVEducation* education = [[CVEducation alloc] init];
    education.institutionName = dictionary[@"institutionName"];
    education.period = dictionary[@"period"];
    
    return education;
}

@end

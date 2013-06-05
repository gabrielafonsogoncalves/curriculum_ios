//
//  CVPersonBuilder.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/1/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVPersonBuilder.h"
#import "CVPerson.h"

@implementation CVPersonBuilder

- (CVPerson*)buildFromDictionary:(NSDictionary *)dictionary {
    CVPerson* person = [[CVPerson alloc] init];
    
    person.name = dictionary[@"name"];
    person.lastname = dictionary[@"lastname"];
    person.maritalStatus = dictionary[@"maritalStatus"];
    person.idNumber = dictionary[@"idNumber"];
    person.phoneNumber = dictionary[@"phoneNumber"];
    person.email = dictionary[@"email"];
    person.photo = dictionary[@"photo"];
    
    return person;
}

@end

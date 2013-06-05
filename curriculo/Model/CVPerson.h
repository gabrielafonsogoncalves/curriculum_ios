//
//  CVPerson.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/1/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CVPerson : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* lastname;
@property (nonatomic, strong) NSString* idNumber;
@property (nonatomic, strong) NSString* maritalStatus;
@property (nonatomic, strong) NSString* phoneNumber;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* photo;

@end

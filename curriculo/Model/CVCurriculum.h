//
//  CVCurriculum.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/1/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CVPerson.h"

@interface CVCurriculum : NSObject

@property (nonatomic, strong) CVPerson* person;
@property (nonatomic, strong) NSArray* works;
@property (nonatomic, strong) NSArray* lenguages;
@property (nonatomic, strong) NSArray* skills;
@property (nonatomic, strong) NSArray* education;

@end

//
//  CVPersonBuilder.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/1/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CVPerson.h"

@interface CVPersonBuilder : NSObject

- (CVPerson*)buildFromDictionary:(NSDictionary *)dictionary;

@end

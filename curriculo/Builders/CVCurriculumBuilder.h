//
//  CVCurriculumBuilder.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/1/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CVCurriculum.h"

@interface CVCurriculumBuilder : NSObject

- (CVCurriculum*)buildFromDictionary:(NSDictionary *)dictionary;

@end

//
//  CVWorkBuilder.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CVWork.h"

@interface CVWorkBuilder : NSObject

- (CVWork*)buildFromDictionary:(NSDictionary *)dictionary;

@end

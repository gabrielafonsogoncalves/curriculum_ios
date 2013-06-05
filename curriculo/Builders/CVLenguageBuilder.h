//
//  CVLenguageBuilder.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CVLenguage.h"

@interface CVLenguageBuilder : NSObject

- (CVLenguage*)buildFromDictionary:(NSDictionary *)dictionary;

@end

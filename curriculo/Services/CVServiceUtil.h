//
//  CVBuilder.h
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CVServiceUtil : NSObject

+ (NSData*)syncRequest:(NSString*)relativeURL withParams:(NSDictionary*)params response:(NSURLResponse**)response error:(NSError**)error;
+ (NSMutableURLRequest*)requestForURL:(NSString*)relativeURL withParams:(NSDictionary*)params;
+ (NSString*)dictionaryToQueryString:(NSDictionary*)dictionary;

@end

//
//  CVBuilder.m
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVServiceUtil.h"

@implementation CVServiceUtil

NSString* const EDHostname = @"http://localhost/curriculum/";

+ (NSData*)syncRequest:(NSString*)relativeURL withParams:(NSDictionary*)params response:(NSURLResponse**)response error:(NSError**)error
{
    NSURLRequest* request = [self requestForURL:relativeURL withParams:params];
    return [NSURLConnection sendSynchronousRequest:request returningResponse:response error:error];
}

+ (NSMutableURLRequest*)requestForURL:(NSString*)relativeURL withParams:(NSDictionary*)params
{
    NSURL* url = [NSURL URLWithString:relativeURL relativeToURL:[NSURL URLWithString:EDHostname]];
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"GET";
//    request.HTTPBody = [[self dictionaryToQueryString:params] dataUsingEncoding:NSUTF8StringEncoding];
    
    return request;
}

+ (NSString*)dictionaryToQueryString:(NSDictionary*)dictionary
{
    if (dictionary == nil)
    {
        return nil;
    }
    
    NSMutableArray* queryStringParts = [[NSMutableArray alloc] init];
    
    for (id key in dictionary)
    {
        NSString* keyString = (NSString*)key;
        NSString* value = [dictionary objectForKey:key];
        
        [queryStringParts addObject:[NSString stringWithFormat:@"%@=%@", keyString, value]];
    }
    
    return [queryStringParts componentsJoinedByString:@"&"];
}

@end
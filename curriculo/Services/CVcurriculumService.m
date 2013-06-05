//
//  CVcurriculumService.m
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVcurriculumService.h"
#import "CVServiceUtil.h"
#import "CVCurriculum.h"
#import "CVCurriculumBuilder.h"

@implementation CVcurriculumService

- (CVCurriculum*)curriculum {
    
    return [self parseCurriculumData:[self fetchCurriculum]];
}

- (CVCurriculum*)parseCurriculumData:(NSData*)data {
    
    NSError* error = nil;
    NSDictionary* curriculumDict = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:kNilOptions
                                                                     error:&error];
    NSLog(@"%@", curriculumDict);
    
    CVCurriculumBuilder* curriculumBuilder = [[CVCurriculumBuilder alloc] init];
    
    return [curriculumBuilder buildFromDictionary:curriculumDict];
}

- (NSData*)fetchCurriculum
{
    NSURLResponse* response = nil;
    NSError* error = nil;
    
    NSData* curriculumData = [CVServiceUtil
                           syncRequest:@"index.php"
                           withParams: nil
                           response:&response
                           error:&error];
    
    if (error != nil)
    {
        NSLog(@"There was an error fetching data %@", error);
    }
    
    return curriculumData;
}

@end

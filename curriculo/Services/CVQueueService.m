//
//  CVQueueService.m
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVQueueService.h"

@interface CVQueueService ()

@end

@implementation CVQueueService

+ (dispatch_queue_t)queue:(NSString *)queueName
{
    static NSMutableDictionary* queues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queues = [[NSMutableDictionary alloc] init];
    });
    
    if (!queues[queueName])
    {
        queues[queueName] = (dispatch_queue_create(queueName.UTF8String, NULL));
    }
    
    return (dispatch_queue_t)(queues[queueName]);
}

@end

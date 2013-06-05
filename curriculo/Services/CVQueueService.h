//
//  CVQueueService.h
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CVQueueService : NSObject

+ (dispatch_queue_t)queue:(NSString*)queueName;

@end

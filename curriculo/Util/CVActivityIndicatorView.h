//
//  CVActivityIndicatorView.h
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CVActivityIndicatorView : NSObject

- (id)initWithView:(UIView*)view;
- (void)startAnimating;
- (void)stopAnimating;

@end

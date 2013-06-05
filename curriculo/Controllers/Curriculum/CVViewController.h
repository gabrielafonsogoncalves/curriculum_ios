//
//  CVViewController.h
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CVActivityIndicatorView.h"
#import "CVCurriculum.h"

@interface CVViewController : UITableViewController

@property (strong, nonatomic) CVActivityIndicatorView* activityIndicatorView;
@property (strong, nonatomic) CVCurriculum* curriculum;

@end

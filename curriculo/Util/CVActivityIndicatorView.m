//
//  CVActivityIndicatorView.m
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVActivityIndicatorView.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface CVActivityIndicatorView ()

@property (nonatomic, strong) MBProgressHUD* hud;
@property (nonatomic, strong) UIView* view;
@property (nonatomic) NSUInteger pendingOperations;

@end

@implementation CVActivityIndicatorView

- (id)initWithView:(UIView*)view
{
    self = [super init];
    
    if (self)
    {
        _view = view;
        _pendingOperations = 0;
    }
    
    return self;
}

- (void)startAnimating
{
    if (_pendingOperations <= 0)
    {
        _hud = [MBProgressHUD showHUDAddedTo:_view animated:YES];
    }
    
    _pendingOperations += 1;
}

- (void)stopAnimating
{
    _pendingOperations -= 1;
    
    if (_pendingOperations <= 0)
    {
        [_hud hide:YES];
    }
}


@end

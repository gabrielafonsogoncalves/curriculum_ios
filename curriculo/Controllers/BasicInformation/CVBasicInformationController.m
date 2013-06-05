//
//  CVBasicInformationController.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVBasicInformationController.h"

@interface CVBasicInformationController ()

@end

@implementation CVBasicInformationController

@synthesize person;

@synthesize nameLabel;
@synthesize lastnameLabel;
@synthesize idNumberLabel;
@synthesize phoneLabel;
@synthesize emailLabel;
@synthesize maritalStatusLabel;

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.nameLabel.text = person.name;
    self.lastnameLabel.text = person.lastname;
    self.idNumberLabel.text = person.idNumber;
    self.phoneLabel.text = person.phoneNumber;
    self.emailLabel.text = person.email;
    self.maritalStatusLabel.text = person.maritalStatus;
}

@end

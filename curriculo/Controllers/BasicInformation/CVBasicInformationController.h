//
//  CVBasicInformationController.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CVPerson.h"

@interface CVBasicInformationController : UIViewController

@property (nonatomic, strong) CVPerson* person;

@property (nonatomic, strong) IBOutlet UILabel* nameLabel;
@property (nonatomic, strong) IBOutlet UILabel* lastnameLabel;
@property (nonatomic, strong) IBOutlet UILabel* idNumberLabel;
@property (nonatomic, strong) IBOutlet UILabel* phoneLabel;
@property (nonatomic, strong) IBOutlet UILabel* emailLabel;
@property (nonatomic, strong) IBOutlet UILabel* maritalStatusLabel;

@end

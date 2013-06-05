//
//  CVCurriculumCell.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CVEducationCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel* institutionLabel;
@property (nonatomic, strong) IBOutlet UILabel* periodLabel;
@property (nonatomic, strong) IBOutlet UILabel* counterLabel;

@end

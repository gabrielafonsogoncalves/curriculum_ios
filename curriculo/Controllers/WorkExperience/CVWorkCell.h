//
//  CVWorkCell.h
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CVWorkCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel* nameLabel;
@property (nonatomic, strong) IBOutlet UILabel* phoneLabel;
@property (nonatomic, strong) IBOutlet UILabel* periodLabel;
@property (nonatomic, strong) IBOutlet UILabel* detailLabel;
@property (nonatomic, strong) IBOutlet UILabel* counterLabel;

@end

//
//  CVEducationController.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVDetailController.h"
#import "CVEducationCell.h"
#import "CVWorkCell.h"
#import "CVSkillCell.h"
#import "CVLenguageCell.h"
#import "CVEducation.h"
#import "CVWork.h"
#import "CVSkill.h"
#import "CVLenguage.h"

@interface CVDetailController ()

@end

@implementation CVDetailController

@synthesize componentsArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return componentsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([componentsArray[indexPath.row] isKindOfClass:[CVEducation class]]) {
        CVEducationCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EducationCell" forIndexPath:indexPath];
        CVEducation* education = componentsArray[indexPath.row];
        
        if (education) {
            cell.counterLabel.text = [NSString stringWithFormat:@"%d", indexPath.row + 1];
            cell.institutionLabel.text = education.institutionName;
            cell.periodLabel.text = education.period;
        }
        
        return cell;
    } else if ([componentsArray[indexPath.row] isKindOfClass:[CVWork class]]) {
        CVWorkCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WorkCell" forIndexPath:indexPath];
        CVWork* work = componentsArray[indexPath.row];
        
        if (work) {
            cell.counterLabel.text = [NSString stringWithFormat:@"%d", indexPath.row + 1];
            cell.nameLabel.text = work.name;
            cell.detailLabel.text = work.detail;
            cell.periodLabel.text = work.duration;
            cell.phoneLabel.text = work.phoneNumber;
        }
        
        return cell;
    } else if ([componentsArray[indexPath.row] isKindOfClass:[CVSkill class]]) {
        CVSkillCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SkillCell" forIndexPath:indexPath];
        CVSkill* skill = componentsArray[indexPath.row];
        
        if (skill) {
            cell.counterLabel.text = [NSString stringWithFormat:@"%d", indexPath.row + 1];
            cell.descriptionLabel.text = skill.detail;
        }
        
        return cell;
    } else if ([componentsArray[indexPath.row] isKindOfClass:[CVLenguage class]]) {
        CVLenguageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LenguageCell" forIndexPath:indexPath];
        CVLenguage* lenguage = componentsArray[indexPath.row];
        
        if (lenguage) {
            cell.counterLabel.text = [NSString stringWithFormat:@"%d", indexPath.row + 1];
            cell.nameLabel.text = lenguage.name;
            cell.levelLabel.text = lenguage.level;
        }
        
        return cell;
    }

    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([componentsArray[indexPath.row] isKindOfClass:[CVEducation class]]) {
        return 116;
    } else if ([componentsArray[indexPath.row] isKindOfClass:[CVWork class]]) {
        return 259;
    } else if ([componentsArray[indexPath.row] isKindOfClass:[CVSkill class]]) {
        return 105;
    } else if ([componentsArray[indexPath.row] isKindOfClass:[CVLenguage class]]) {
        return 110;
    }
    
    return  0;
}

@end

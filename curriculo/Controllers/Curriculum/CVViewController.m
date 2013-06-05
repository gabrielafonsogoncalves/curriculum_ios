//
//  CVViewController.m
//  curriculo
//
//  Created by Gabriel Afonso on 5/28/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVViewController.h"
#import "CVActivityIndicatorView.h"
#import "CVQueueService.h"
#import "CVcurriculumService.h"
#import "CVCurriculum.h"
#import "CVBasicInformationController.h"
#import "CVDetailController.h"

@interface CVViewController ()

@end

@implementation CVViewController

@synthesize activityIndicatorView;
@synthesize curriculum;

- (void)viewDidLoad
{
    [super viewDidLoad];
    activityIndicatorView = [[CVActivityIndicatorView alloc] initWithView:self.view];
    [self synchronizeCurriculum];
}

- (void)synchronizeCurriculum
{
    [activityIndicatorView startAnimating];
    
    dispatch_queue_t queue = [CVQueueService queue:@"com.cv.load"];
    dispatch_async(queue, ^{
        CVcurriculumService* curriculumService = [[CVcurriculumService alloc] init];        
        self.curriculum = [curriculumService curriculum];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [activityIndicatorView stopAnimating];
        });
    });
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"selected row %d", [self.tableView indexPathForSelectedRow].row);
    CVDetailController* viewController = [segue destinationViewController];
    
    switch ([self.tableView indexPathForSelectedRow].row) {
        case 0:
        {
            CVBasicInformationController* viewController = [segue destinationViewController];
            viewController.person = self.curriculum.person;
            break;
        }
        case 1:
        {
            viewController.componentsArray = self.curriculum.education;
            break;
        }
        case 2:
        {
            viewController.componentsArray = self.curriculum.works;
            break;
        }
        case 3:
        {
            viewController.componentsArray = self.curriculum.skills;
            break;
        }
        case 4:
        {
            viewController.componentsArray = self.curriculum.lenguages;
            break;
        }
            
        default:            
            break;
    }
    
    
}

@end

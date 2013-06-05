//
//  CVCurriculumBuilder.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/1/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVCurriculumBuilder.h"
#import "CVPersonBuilder.h"
#import "CVEducationBuilder.h"
#import "CVWorkBuilder.h"
#import "CVLenguageBuilder.h"
#import "CVSkillBuilder.h"

@implementation CVCurriculumBuilder

- (CVCurriculum*)buildFromDictionary:(NSDictionary *)dictionary {
    CVCurriculum* curriculum = [[CVCurriculum alloc] init];
    
    //get person
    CVPersonBuilder* personBuilder = [[CVPersonBuilder alloc] init];
    curriculum.person = [personBuilder buildFromDictionary:dictionary[@"person"]];
    
    //get education
    NSArray* educationArray = dictionary[@"education"];
    CVEducationBuilder* educationBuilder = [[CVEducationBuilder alloc] init];
    NSMutableArray* educationArrayAux = [[NSMutableArray alloc] init];
    for (NSDictionary* dict in educationArray) {
        [educationArrayAux addObject:[educationBuilder buildFromDictionary:dict]];
    }
    curriculum.education = [NSArray arrayWithArray:educationArrayAux];
    
    //get work
    NSArray* workArray = dictionary[@"workExperience"];
    CVWorkBuilder* workBuilder = [[CVWorkBuilder alloc] init];
    NSMutableArray* workArrayAux = [[NSMutableArray alloc] init];
    for (NSDictionary* dict in workArray) {
        [workArrayAux addObject:[workBuilder buildFromDictionary:dict]];
    }
    curriculum.works = [NSArray arrayWithArray:workArrayAux];
    
    //get skills
    NSArray* skillArray = dictionary[@"skills"];
    CVSkillBuilder* skillBuilder = [[CVSkillBuilder alloc] init];
    NSMutableArray* skillArrayAux = [[NSMutableArray alloc] init];
    for (NSDictionary* dict in skillArray) {
        [skillArrayAux addObject:[skillBuilder buildFromDictionary:dict]];
    }
    curriculum.skills = [NSArray arrayWithArray:skillArrayAux];
    
    //get lenguages
    NSArray* lenguageArray = dictionary[@"lenguage"];
    CVLenguageBuilder* lenguageBuilder = [[CVLenguageBuilder alloc] init];
    NSMutableArray* lenguageArrayAux = [[NSMutableArray alloc] init];
    for (NSDictionary* dict in lenguageArray) {
        [lenguageArrayAux addObject:[lenguageBuilder buildFromDictionary:dict]];
    }
    curriculum.lenguages = [NSArray arrayWithArray:lenguageArrayAux];
    
    return curriculum;
}

@end

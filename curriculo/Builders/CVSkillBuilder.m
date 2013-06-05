//
//  CVSkillBuilder.m
//  curriculo
//
//  Created by Gabriel Afonso on 6/4/13.
//  Copyright (c) 2013 Gabriel. All rights reserved.
//

#import "CVSkillBuilder.h"
#import "CVSkill.h"

@implementation CVSkillBuilder

- (CVSkill*)buildFromDictionary:(NSDictionary *)dictionary {
    CVSkill* skill = [[CVSkill alloc] init];
    skill.detail = dictionary[@"description"];
    
    return skill;
}

@end

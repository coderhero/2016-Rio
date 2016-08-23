//
//  YHCountry.m
//  2016 Rio Olympics Medal standings
//
//  Created by YAN HUANG on 8/22/16.
//  Copyright © 2016 yanhuang. All rights reserved.
//

#import "YHCountry.h"

@implementation YHCountry

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if(self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+ (instancetype)countryWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end

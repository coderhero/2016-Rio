//
//  YHContinent.m
//  2016 Rio Olympics Medal standings
//
//  Created by YAN HUANG on 8/22/16.
//  Copyright © 2016 yanhuang. All rights reserved.
//

#import "YHContinent.h"
#import "YHCountry.h"

@implementation YHContinent

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self =[super init]){
        [self setValuesForKeysWithDictionary:dict];
        
        NSMutableArray *arrayModels = [NSMutableArray array];
        
        for (NSDictionary *item_dict in dict[@"countries"]){
            YHCountry *model = [YHCountry countryWithDict:item_dict];
            [arrayModels addObject:model];
        }
        self.countries = arrayModels;
    }
    return self;
}
+ (instancetype)ContinentWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end

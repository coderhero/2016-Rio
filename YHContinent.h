//
//  YHContinent.h
//  2016 Rio Olympics Medal standings
//
//  Created by YAN HUANG on 8/22/16.
//  Copyright © 2016 yanhuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YHCountry.h"

@interface YHContinent : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSArray *countries;

- (instancetype)initWithDict: (NSDictionary *)dict;
+ (instancetype)ContinentWithDict: (NSDictionary *)dict;

@end

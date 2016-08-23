//
//  YHCountry.h
//  2016 Rio Olympics Medal standings
//
//  Created by YAN HUANG on 8/22/16.
//  Copyright © 2016 yanhuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHCountry : NSObject
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *medalcount;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)countryWithDict:(NSDictionary *)dict;

@end

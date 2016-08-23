//
//  YHHeaderView.m
//  2016 Rio Olympics Medal standings
//
//  Created by YAN HUANG on 8/23/16.
//  Copyright © 2016 yanhuang. All rights reserved.
//

#import "YHHeaderView.h"
@interface YHHeaderView ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

@implementation YHHeaderView

+ (instancetype)headerView
{
    YHHeaderView *headerView = [[[NSBundle mainBundle] loadNibNamed:@"YHHeaderView" owner:self options:nil]
                                firstObject];
    return headerView;
  
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

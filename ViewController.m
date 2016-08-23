//
//  ViewController.m
//  2016 Rio Olympics Medal standings
//
//  Created by YAN HUANG on 8/22/16.
//  Copyright © 2016 yanhuang. All rights reserved.
//

#import "ViewController.h"
#import "YHContinent.h"
#import "YHCountry.h"
#import "YHHeaderView.h"

@interface ViewController () <UITableViewDataSource>
@property (nonatomic, strong) NSArray *Continents;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

#pragma UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.Continents.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    YHContinent *continent = self.Continents[section];
    return continent.countries.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YHContinent *continent = self.Continents[indexPath.section];
    YHCountry *country = continent.countries[indexPath.row];
    
    static NSString *ID = @"country_cell";
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.imageView.image = [UIImage imageNamed:country.icon];
    cell.textLabel.text = country.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Gold  %@", country.medalcount];
    
    
    
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    YHContinent *continent = self.Continents[section];
    return continent.title;
}

- (NSArray *)Continents
{
    if(!_Continents) {
        NSString *path =[[NSBundle mainBundle]pathForResource:@"medals.plist" ofType:nil];
        NSArray *arrayDict = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *arrayModels =[NSMutableArray array];
        for (NSDictionary *dict in arrayDict){
            YHContinent *model = [YHContinent ContinentWithDict:dict];
            [arrayModels addObject:model];
        }
        _Continents = arrayModels;
  }
    return _Continents;
}


- (BOOL)prefersStatusBarHidden{
    return YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    YHHeaderView *headerView = [YHHeaderView headerView];
    self.tableView.tableHeaderView = headerView; 
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

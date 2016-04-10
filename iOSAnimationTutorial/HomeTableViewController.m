//
//  HomeTableViewController.m
//  iOSAnimationTutorial
//
//  Created by 臧其龙 on 16/4/10.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "HomeTableViewController.h"

static NSString * const kShowShadow = @"kShowShadow";
static NSString * const kShowTransform = @"kShowTransform";
static NSString * const kShowMask = @"kShowMask";
static NSString * const kShowCellAnimation = @"kShowCellAnimation";
static NSString * const kShowGroup = @"kShowGroup";

@interface HomeTableViewController ()
{
    NSArray *cellTitleArray;
    NSArray *segueArray;
}

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    cellTitleArray = @[@"阴影动画", @"旋转动画", @"遮罩动画", @"Cell加载动画", @"组动画"];
    segueArray = @[kShowShadow, kShowTransform, kShowMask, kShowCellAnimation, kShowGroup];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return cellTitleArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kBasicCell"];
    
    cell.textLabel.text = cellTitleArray[indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:segueArray[indexPath.row] sender:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

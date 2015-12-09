//
//  SideMenuViewController.m
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.

#import "SideMenuViewController.h"
#import "MFSideMenu.h"
#import "ViewController.h"



@implementation SideMenuViewController
{
    UITableView *tableView;

}

//

#pragma mark - Did Load
#pragma mark -

-(void) viewDidLoad
{
    [super viewDidLoad];
    
      MenuArray =[NSArray arrayWithObjects:@"Profile",@"Friends",@"Status",@"Settings",@"Logout",nil];

    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.alwaysBounceVertical = NO;
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
}
//

#pragma mark - UITableViewDataSource
#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return MenuArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.backgroundColor=[UIColor clearColor];
        cell.textLabel.textColor=[UIColor blackColor];
        UIView *lineView=[[UIView alloc]initWithFrame:CGRectMake(30, 0, 270, 1)];
        lineView.backgroundColor=[UIColor whiteColor];
        [cell.contentView addSubview:lineView];
        
    }

    cell.textLabel.text = [MenuArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}



@end

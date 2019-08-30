//
//  tableViewController.m
//  demoApplication
//
//  Created by IPS Brar on 21/08/14.
//  Copyright (c) 2014 Netset. All rights reserved.
//

#import "tableViewController.h"
#import "dataViewController.h"
#import "AppDelegate.h"
@interface tableViewController ()

@end

@implementation tableViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _myTableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _myTableView.delegate=self;
    self.myTableView.dataSource=self;
    NSLog(@"%lu",(unsigned long)Aname.count);
    // Do any additional setup after loading the view from its nib.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return Aname.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=nil;
    
        static NSString *TableViewCellIdentifier=@"tableCell";
        cell=[tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier];
        if (cell==nil) {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableViewCellIdentifier];
            
        }
    
        cell.textLabel.text=[NSString stringWithFormat:@"%@",[Aname objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    dataViewController *data=[[dataViewController alloc]initWithNibName:@"dataViewController" bundle:nil];
    data.ID=(NSInteger *)indexPath.row;
    
    [self.navigationController pushViewController:data animated:YES];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  dataViewController.m
//  demoApplication
//
//  Created by IPS Brar on 20/08/14.
//  Copyright (c) 2014 Netset. All rights reserved.
//

#import "dataViewController.h"
#import "rootViewController.h"

@interface dataViewController ()

@end

@implementation dataViewController
@synthesize name;
@synthesize dob;
@synthesize contact;
@synthesize email;
@synthesize address;
@synthesize nametext;
@synthesize dobtext;
@synthesize contacttext;
@synthesize emailtext;
@synthesize addtext;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)OKbtn:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Demo Application"];
    self.name.text=nametext;
    self.dob.text=dobtext;
    self.email.text=emailtext;
    self.contact.text=contacttext;
    self.address.text=addtext;
    
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

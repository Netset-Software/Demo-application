//
//  rootViewController.m
//  demoApplication
//
//  Created by IPS Brar on 20/08/14.
//  Copyright (c) 2014 Netset. All rights reserved.
//

#import "rootViewController.h"
#import "dataViewController.h"
#import "tableViewController.h"
#import "AppDelegate.h"

@interface rootViewController ()

@end

@implementation rootViewController
@synthesize name;
@synthesize dob;
@synthesize contact;
@synthesize email;
@synthesize address;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
     {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Demo Application"];
    name.delegate=self;
    email.delegate=self;
    contact.delegate=self;
    address.delegate=self;
    dob.delegate=self;
    //Xcenter=self.view.center.x;
    //Ycenter=self.view.center.y;
    //[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(onKeyboardHide) name:UIKeyboardDidHideNotification object:nil];
    //[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(onKeyboardShow) name:UIKeyboardDidShowNotification object:nil];
    
    // Do any additional setup after loading the view from its nib.
}
/*-(void)onKeyboardHide
{
    self.view.center=CGPointMake(Xcenter, Ycenter);
}
-(void)onKeyboardShow
{
    self.view.center=CGPointMake(self.view.center.x, 10);
}*/
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    if (textField.tag==0)
    {
       
        if (textField.text.length==0&&[string isEqualToString:@" "])
        {
            return NO;
        }
        else
        {
        
        NSCharacterSet *newCharSet = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ "];
        for (int i = 0; i < [string length]; i++)
        {
            unichar c = [string characterAtIndex:i];
            if ([newCharSet characterIsMember:c])
            {
                if (newLength>20)
                {
                    
                    return NO;
                }
                else
                {
                return YES;
                }
            }
            else
            {
                return NO;
            }
          
        }
        }
        
    }
    else if(textField.tag==2)
    {
        if([string isEqualToString:@" "])
            return NO;
        return (newLength > 30) ? NO : YES;
    }
    else if (textField.tag==3)
    {
        NSCharacterSet *charSet =[NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
        for (int i=0; i<[string length]; i++) {
            unichar c=[string characterAtIndex:i];
            if ([charSet characterIsMember:c])
            {
                if(newLength>10)
                {
                    return NO;
                }
                else
                {
                    return YES;
                }
            }
            else
            {
                return NO;
            }
            
                
        }
        
        
    }
    else if(textField.tag==4)
    {
        if (textField.text.length==0&&[string isEqualToString:@" "]) {
            return NO;
        }
        return (newLength > 150) ? NO : YES;
    }
    
    return YES;
}

-(void)viewDidAppear:(BOOL)animated
{
    [name setText:@""];
    [contact setText:@""];
    [email setText:@""];
    [address setText:@""];
    [dob setText:@""];
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField.tag==1) {
        UIDatePicker *datePicker = [[UIDatePicker alloc]init];
        datePicker.datePickerMode=UIDatePickerModeDate;
        [datePicker setDate:[NSDate date]];
        [datePicker addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventValueChanged];
        [self.dob setInputView:datePicker];
        
            }
    return YES;
}
-(void)updateTextField:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)self.dob.inputView;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setDateFormat:@"dd-MMM-yyyy"];
    
    NSDate *date = picker.date;

    self.dob.text = [formatter stringFromDate:date];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSInteger tag=textField.tag+1;
    UIResponder *responder=[textField.superview viewWithTag:tag];
    if(responder)
    {
        [responder becomeFirstResponder];
    }
    else
    {
    [textField resignFirstResponder];
    }
        return NO;
}

- (IBAction)SubmitBtn:(id)sender {
    NSString *str=@"";
    str=email.text;
    if (name.text.length==0||dob.text.length==0||contact.text.length==0||email.text.length==0||address.text.length==0) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Demo Application" message:@"Please complete the form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    else if ([str rangeOfString:@"@"].location==NSNotFound||email.text.length<5) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Demo Application" message:@"Enter a valid email address" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    else if(contact.text.length<10)
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Demo Application" message:@"Contact number should be of 10 digits" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    else
    {
    /*dataViewController *showdata=[[dataViewController alloc]initWithNibName:@"dataViewController" bundle:nil];
    showdata.nametext=name.text;
    showdata.dobtext= dob.text;
    showdata.contacttext=contact.text;
    showdata.emailtext=email.text;
    showdata.addtext=address.text;
        

    [self.navigationController pushViewController:showdata animated:YES];*/
    tableViewController *tableView=[[tableViewController alloc]initWithNibName:@"tableTableViewController" bundle:nil];
        
    
        [Aname addObject:name.text];
        [Adob addObject:dob.text];
        [Aaddress addObject:address.text];
        [Acontact addObject:contact.text];
        [Aemail addObject:email.text];
        [self.navigationController pushViewController:tableView animated:YES];
    }
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self view]endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

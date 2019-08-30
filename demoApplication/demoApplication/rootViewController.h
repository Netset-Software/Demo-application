//
//  rootViewController.h
//  demoApplication
//
//  Created by IPS Brar on 20/08/14.
//  Copyright (c) 2014 Netset. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface rootViewController : UIViewController <UITextFieldDelegate,UIActionSheetDelegate>
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *dob;

@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *contact;
@property (strong, nonatomic) IBOutlet UITextField *address;


@end

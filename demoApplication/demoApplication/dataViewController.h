//
//  dataViewController.h
//  demoApplication
//
//  Created by IPS Brar on 20/08/14.
//  Copyright (c) 2014 Netset. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dataViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *dob;
@property (strong, nonatomic) IBOutlet UILabel *email;
@property (strong, nonatomic) IBOutlet UILabel *contact;
@property (strong, nonatomic) IBOutlet UITextView *address;

@property (strong,nonatomic)NSString* nametext;
@property (strong,nonatomic)NSString* dobtext;
@property (strong,nonatomic)NSString* emailtext;
@property (strong,nonatomic)NSString* contacttext;
@property (strong,nonatomic)NSString* addtext;

@end

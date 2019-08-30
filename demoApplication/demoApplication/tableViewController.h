//
//  tableViewController.h
//  demoApplication
//
//  Created by IPS Brar on 21/08/14.
//  Copyright (c) 2014 Netset. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic)UITableView *myTableView;


@end

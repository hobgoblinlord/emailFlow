//
//  emailTableViewController.h
//  emailFlow
//
//  Created by Noel Proulx on 1/9/14.
//  Copyright (c) 2014 Noel Proulx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface emailTableViewController : UITableViewController

#define EMAIL_VIEW_TITLE 0
#define EMAIL_VIEW_AVATAR 1
#define EMAIL_VIEW_DESCRIPTION 2
#define EMAIL_VIEW_READ 3
#define EMAIL_VIEW_TIME 4
#define EMAIL_VIEW_NAMES 5

@property (nonatomic, strong) NSArray *Title;
@property (nonatomic, strong) NSArray *Description;
@property (nonatomic, strong) NSArray *Avatar;
@property (nonatomic, strong) NSArray *emailContentList;

@end

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
#define EMAIL_VIEW_ACCOUNT_FLAG 6
#define EMAIL_VIEW_NEW_EMAIL 7
#define EMAIL_VIEW_TOTAL_EMAIL 8


@property (nonatomic, strong) NSArray *emailContentList;
@property (nonatomic, strong) NSArray *emailAccountFlags;
@property (nonatomic, assign) int currentlySelectedListCell;




@end

//
//  emailTableViewController.h
//  emailFlow
//
//  Created by Noel Proulx on 1/9/14.
//  Copyright (c) 2014 Noel Proulx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface emailTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *Title;
@property (nonatomic, strong) NSArray *Description;
@property (nonatomic, strong) NSArray *Avatar;
@property (nonatomic, strong) NSArray *emailContentList;

@end

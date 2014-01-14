//
//  emailTableCellController.h
//  emailFlow
//
//  Created by Noel Proulx on 1/9/14.
//  Copyright (c) 2014 Noel Proulx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface emailTableCellController : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *EmailTitle;
@property (strong, nonatomic) IBOutlet UILabel *EmailDescription;
@property (strong, nonatomic) IBOutlet UIImageView *EmailAvatar;
@property (strong, nonatomic) IBOutlet UILabel *EmailTime;
@property (strong, nonatomic) IBOutlet UILabel *EmailNames;
@property (strong, nonatomic) IBOutlet UIImageView *EmailAccountFlag;
@end

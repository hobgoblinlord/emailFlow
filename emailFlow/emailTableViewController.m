//
//  emailTableViewController.m
//  emailFlow
//
//  Created by Noel Proulx on 1/9/14.
//  Copyright (c) 2014 Noel Proulx. All rights reserved.
//

#import "emailTableViewController.h"
#import "emailTableCellController.h"

@interface emailTableViewController ()

@end

@implementation emailTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    

    // _email Content list key TITLE:String, AVATAR:String, DESCRIPTION:String, READ:Boolean, TIME:String, ACCOUNT FLAG:String, New Email:int, Total Email:int
    
    _emailContentList =@[@[@"How's it going",@"brian.jpg",@"Just wanted to see what you are up to and how things have been. is everything ok in your corner of the world. hit me up with what's going on this weekend",@false,@"8:10p",@"Brian Goss",@"redTri.png",@"4",@"7",],
                         @[@"Who went to the party last night",@"jeff.jpg",@"If you went to the party did you see my keys?",@true,@"7:12p",@"Jeff Goss",@"redTri.png",@"0",@"4",],
                         @[@"Are you going to the meeting?",@"",@"Are you going to be here in time for the meeting? what time do you think you will get here if you are?",@false,@"5:14a",@"Nathan",@"blueTri.png",@"3",@"20"]];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return _emailContentList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"emailTableCellController";
    emailTableCellController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    int row = [indexPath row];
    if ([_emailContentList[row][EMAIL_VIEW_READ] isEqual: @true])
    {
       
        cell.contentView.backgroundColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:234/255.0f alpha:1.0f];
        cell.EmailTime.textColor = [UIColor colorWithRed:204/255.0f green:204/255.0f blue:204/255.0f alpha:1.0f];

    }
    
    
    cell.EmailTitle.text = @"";
    cell.EmailDescription.text = _emailContentList[row][EMAIL_VIEW_DESCRIPTION];
    cell.EmailAvatar.image = [UIImage imageNamed:_emailContentList[row][EMAIL_VIEW_AVATAR]];
    cell.EmailTime.text = _emailContentList[row][EMAIL_VIEW_TIME];
    cell.EmailNames.text = @"";
    
    int xpos = 49; //default x for title and names
    int xpos2 = 0; // for the blue dot
    
    if([_emailContentList[row][EMAIL_VIEW_AVATAR] isEqual: @""])
    {
        xpos = 9;// if there is no avatar image dropp the title and names to the left
    }
   
    if([_emailContentList[row][EMAIL_VIEW_NEW_EMAIL] isEqual: @"0"])
    {
        //do nothing
    }
    else{
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(xpos, 18, 10, 10)];
        imgView.image = [UIImage imageNamed:@"NewMail@2x.png"];
        [cell.contentView addSubview: imgView];
        xpos2 = 12;
    }
    
    // create the label for the email title
    UILabel  * label = [[UILabel alloc] initWithFrame:CGRectMake(xpos, 27, 243, 21)];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:15.0f];
    label.textColor=[UIColor blackColor];
    label.numberOfLines=1;
    label.text = _emailContentList[row][EMAIL_VIEW_TITLE];
    [cell.contentView addSubview: label];
    
    // create the label for the email names list
    UILabel  * label2 = [[UILabel alloc] initWithFrame:CGRectMake(xpos+xpos2, 12, 243, 21)];
    label2.backgroundColor = [UIColor clearColor];
    label2.font = [UIFont systemFontOfSize:14.0f];
    label2.textColor=[UIColor colorWithRed:122/255.0f green:122/255.0f blue:122/255.0f alpha:1.0f];
    label2.numberOfLines=1;
    
    label2.text = [NSString stringWithFormat:@"%@/%@ %@", _emailContentList[row][EMAIL_VIEW_NEW_EMAIL],_emailContentList[row][EMAIL_VIEW_TOTAL_EMAIL], _emailContentList[row][EMAIL_VIEW_NAMES]];
    [cell.contentView addSubview: label2];
    cell.EmailAccountFlag.image = [UIImage imageNamed:_emailContentList[row][EMAIL_VIEW_ACCOUNT_FLAG]];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end

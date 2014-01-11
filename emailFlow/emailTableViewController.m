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
    
    //_Title = @[@"How's it going", @"Who went to the party last night",@"Hello World",@"A test Email",@"Look Here",];
    
    //_Avatar = @[@"brian.jpg",@"jeff.jpg",@"nathan.jpg",@"nathan.jpg",@"jeff.jpg",];
    
    //_Description = @[@"Just wanted to see how things were going with you lorem ipsum dolor mock mg lofar lorem hippster ramble blah blah blah ramble blather ha ha ha yup ok not a little jalepeno.",@"If you went to the party did you see my keys?",@"A new world has been born just wanted to see how things are with it",@"This email is a test of the emergency email broadcast system",@"Hey take a look at this funny cat video",];

    // _email Content list key TITLE:String, AVATAR:String, DESCRIPTION:String, READ:Boolean, TIME:String
    
    _emailContentList =@[@[@"How's it going",@"brian.jpg",@"Just wanted to see what you are up to and how things have been. is everything ok in your corner of the world. hit me up with what's going on this weekend",@false,@"8:10p",@"Brian Goss",],
                         @[@"Who went to the party last night",@"jeff.jpg",@"If you went to the party did you see my keys?",@true,@"7:12p",@"Jeff Goss",],
                         @[@"Are you going to the meeting?",@"",@"Are you going to be here in time for the meeting? what time do you think you will get here if you are?",@false,@"5:14a",@"Nathan",]];
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
    if ([_emailContentList[row][3] isEqual: @true])
    {
       
        cell.contentView.backgroundColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:234/255.0f alpha:1.0f];
        cell.EmailTime.textColor = [UIColor colorWithRed:204/255.0f green:204/255.0f blue:204/255.0f alpha:1.0f];

    }
    
    
    cell.EmailTitle.text = _emailContentList[row][0];
    cell.EmailDescription.text = _emailContentList[row][2];
    cell.EmailAvatar.image = [UIImage imageNamed:_emailContentList[row][1]];
    cell.EmailTime.text = _emailContentList[row][4];
    cell.EmailNames.text = _emailContentList[row][5];
    if([_emailContentList[row][1] isEqual: @""])
    {
        cell.EmailTitle.frame = CGRectMake(9.0f, 27.0f, 243.0f, 21.0f);
        
    }
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

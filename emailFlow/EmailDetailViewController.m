//
//  EmailDetailViewController.m
//  emailFlow
//
//  Created by Noel Proulx on 1/14/14.
//  Copyright (c) 2014 Noel Proulx. All rights reserved.
//

#import "EmailDetailViewController.h"

@interface EmailDetailViewController ()

- (void)goBack:(NSString*)testvar;

@end

@implementation EmailDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonWasTapped:(id)sender{
   
    [self goBack:nil];
}


- (void)goBack:(id)sender{
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"button pressed"
    message:@"tried to go back" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [mes show];
    [self.navigationController popViewControllerAnimated:YES];
}
@end



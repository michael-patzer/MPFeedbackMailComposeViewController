//
//  ViewController.m
//  MPFeedbackMailComposeViewController
//
//  Created by Michael Patzer on 3/5/13.
//  Copyright (c) 2013 Michael Patzer. All rights reserved.
//

#import "ViewController.h"
#import "MPFeedbackMailComposeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions

- (IBAction)sendFeedbackButtonPressed:(id)sender {
    MPFeedbackMailComposeViewController *controller = [[MPFeedbackMailComposeViewController alloc] init];
    [controller setMailComposeDelegate:self];
    [controller setToRecipients:@[@"support@yourcompany.com"]]; // Optional
    [controller setSubject:@"App Feedback"]; // Optional
    [controller setMessageBody:@"Customer feedback" isHTML:NO]; // Optional
    [self presentViewController:controller animated:YES completion:nil];
}

#pragma mark - MFMailComposeViewControllerDelegate methods

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

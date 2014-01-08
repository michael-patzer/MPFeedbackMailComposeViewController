//
//  ViewController.h
//  MPFeedbackMailComposeViewController
//
//  Created by Michael Patzer on 3/5/13.
//  Copyright (c) 2013 Michael Patzer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)sendFeedbackButtonPressed:(id)sender;

@end

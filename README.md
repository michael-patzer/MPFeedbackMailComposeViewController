MPFeedbackMailComposeViewController
===================================

Launch email directly from your app, pre-filled with critical customer information, such as app version, device type, OS version, and more.

### 1. Add the MPFeedback folder to your Xcode project.
Make sure to select "Copy Items to Destination" along with all appropriate targets when copying the MPFeedback files to your project.

### 2. Add the following frameworks to your project.
+ CoreTelephony.framework
+ MessageUI.framework

### 3. Import MPFeedbackComposeViewController.h into the view controller that will present your in-app feedback e-mail form.

    #import "MPFeedbackMailComposeViewController.h"


### 4. Copy this code snippet into the method that will present your in-app feedback e-mail form.

    MPFeedbackMailComposeViewController *controller = [[MPFeedbackMailComposeViewController alloc] init];
    [controller setMailComposeDelegate:self];
    [controller setToRecipients:@[@"support@yourcompany.com"]]; // Optional
    [controller setSubject:@"App Feedback"]; // Optional
    [controller setMessageBody:@"Customer feedback" isHTML:NO]; // Optional
    [self presentViewController:controller animated:YES completion:nil];
//
//  AboutViewController.m
//  IFAAboutViewController
//
//  Created by Marcelo Schroeder on 10/12/11.
//  Copyright (c) 2011 InfoAccent Pty Limited. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "IFAAppUI.h"

@interface IFAAboutViewController ()
@property(nonatomic, strong) IFAEmailManager *IFA_emailManager;
@end

@implementation IFAAboutViewController
@synthesize copyrightNoticeLabel;
@synthesize createdByLabel;
@synthesize visualDesignByLabel;
@synthesize editionLabel;


#pragma mark - Private

-(NSString*)IFA_supportEmailAddress {
    return [IFAUtils infoPList][@"IFASupportEmailAddress"];
}

-(NSString*)IFA_bugReportEmailAddress {
    NSString *l_emailAddress = [IFAUtils infoPList][@"IFABugReportEmailAddress"];
    if (!l_emailAddress) {
        l_emailAddress = [self IFA_supportEmailAddress];
    }
    return l_emailAddress;
}

-(NSString*)IFA_feedbackEmailAddress {
    NSString *l_emailAddress = [IFAUtils infoPList][@"IFAFeedbackEmailAddress"];
    if (!l_emailAddress) {
        l_emailAddress = [self IFA_supportEmailAddress];
    }
    return l_emailAddress;
}

#pragma mark - Public

- (IBAction)bugReportButtonTap:(id)sender{
    NSString *l_body = [NSString stringWithFormat:NSLocalizedStringFromTable(@"Hi there,\n\nPlease fix the following bug I have found in %@:", @"IFALocalizable", @"Hi there, Please fix the following bug I have found in <APP_NAME>:"), [IFAUtils appFullName]];
    [self.IFA_emailManager composeEmailWithSubject:NSLocalizedStringFromTable(@"Bug Report", @"IFALocalizable", nil) recipient:[self IFA_bugReportEmailAddress] body:l_body];
}

- (IBAction)feedbackButtonTap:(id)sender{
    NSString *l_body = [NSString stringWithFormat:NSLocalizedStringFromTable(@"Hi there,\n\nI have the following feedback to provide for %@:", @"IFALocalizable", @"Hi there, I have the following feedback to provide for <APP_NAME>:"), [IFAUtils appFullName]];
    [self.IFA_emailManager composeEmailWithSubject:NSLocalizedStringFromTable(@"Feedback", @"IFALocalizable", nil) recipient:[self IFA_feedbackEmailAddress] body:l_body];
}

- (IBAction)forceCrashButtonTap:(id)sender {
    [IFAUtils forceCrash];
}

- (IBAction)thirdPartyCreditsButtonTap:(id)sender {
    UIViewController *l_viewController = [[IFAThirdPartyCodeCreditsViewController alloc] init];
    l_viewController.title = NSLocalizedStringFromTable(@"Third Party Credits", @"IFALocalizable", nil);
    [self ifa_presentModalViewController:l_viewController
                       presentationStyle:UIModalPresentationCurrentContext
                         transitionStyle:UIModalTransitionStyleCoverVertical
                     shouldAddDoneButton:YES];
}

#pragma mark - Overrides

-(BOOL)ifa_manageToolbar {
    return NO;
}

-(void)viewDidLoad{

    [super viewDidLoad];

    // Set product name and version in the view
    self.appNameLabel.text = [IFAUtils appName];
    self.editionLabel.text = [IFAUtils appEdition];
    self.versionLabel.text = [IFAUtils appVersionAndBuildNumber];
    self.copyrightNoticeLabel.text = [IFAUtils infoPList][@"IFACopyrightNotice"];
    self.createdByLabel.text = [IFAUtils infoPList][@"IFACreatedBy"];
    self.visualDesignByLabel.text = [IFAUtils infoPList][@"IFAVisualDesignBy"];
    
    // Set email manager
    self.IFA_emailManager = [[IFAEmailManager alloc] initWithParentViewController:self];

    self.forceCrashButton.hidden = ![[IFAUtils infoPList][@"IFAShowForceCrashButton"] boolValue];

}

@end

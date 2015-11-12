//
//  IFAAboutFormViewController.m
//  IFAAppUI
//
//  Created by Marcelo Schroeder on 20/09/12.
//  Copyright (c) 2012 InfoAccent Pty Limited. All rights reserved.
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

@interface IFAAboutFormViewController ()

@property (nonatomic, strong) IFAEmailManager *IFA_emailManager;

@end

@implementation IFAAboutFormViewController {
    
}

#pragma mark - Private

-(NSString*)IFA_supportEmailAddress {
    return [IFAUtils infoPList][@"IFASupportEmailAddress"];
}

- (void)IFA_onReportBugButtonTap {
    NSString *l_body = [NSString stringWithFormat:NSLocalizedStringFromTable(@"Hi there,\n\nPlease fix the following bug I have found in %@:", @"IFALocalizable", @"Hi there, Please fix the following bug I have found in <APP_NAME>:"), [IFAUtils appFullName]];
    [self.IFA_emailManager composeEmailWithSubject:NSLocalizedStringFromTable(@"Bug Report", @"IFALocalizable", nil) recipient:[self IFA_supportEmailAddress] body:l_body];
}

- (void)IFA_onProvideFeedbackButtonTap {
    NSString *l_body = [NSString stringWithFormat:NSLocalizedStringFromTable(@"Hi there,\n\nI have the following feedback to provide for %@:", @"IFALocalizable", @"Hi there, I have the following feedback to provide for <APP_NAME>:"), [IFAUtils appFullName]];
    [self.IFA_emailManager composeEmailWithSubject:NSLocalizedStringFromTable(@"Feedback", @"IFALocalizable", nil) recipient:[self IFA_supportEmailAddress] body:l_body];
}

- (void)IFA_onForceCrashButtonTap {
    [IFAUtils forceCrash];
}

#pragma mark - Overrides

-(id)initWithCoder:(NSCoder *)aDecoder{
    
    if (self=[super initWithCoder:aDecoder]) {
        
        // Populate model object
        IFAAboutInfoModel *l_model = [IFAAboutInfoModel new];
        l_model.edition = [IFAUtils appEdition];
        l_model.version = [IFAUtils appVersionAndBuildNumber];
        NSArray *l_appCreators = [IFAUtils infoPList][@"IFAAppCreators"];
        l_model.creatorName = l_appCreators[0][@"name"];
        l_model.creatorUrl = l_appCreators[0][@"url"];
        NSArray *l_appVisualDesigners = [IFAUtils infoPList][@"IFAAppVisualDesigners"];
        l_model.visualDesignerName = l_appVisualDesigners[0][@"name"];
        l_model.visualDesignerUrl = l_appVisualDesigners[0][@"url"];
        
        // Configure form view controller
        self.object = l_model;
        self.readOnlyMode = YES;
        self.createMode = NO;

        // Configure email manager
        self.IFA_emailManager = [[IFAEmailManager alloc] initWithParentViewController:self];
        
        // Configure custom view
        [[NSBundle bundleForClass:[IFAAboutFormViewController class]] loadNibNamed:@"IFAAboutCustomView" owner:self options:nil];
        self.appNameLabel.text = [IFAUtils appName];
        self.copyrightNoticeLabel.text = [IFAUtils infoPList][@"IFACopyrightNotice"];
        
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.formViewControllerDelegate = self;
}

#pragma mark - UITableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    IFAFormTableViewCell *cell = (IFAFormTableViewCell *) [super tableView:tableView cellForRowAtIndexPath:indexPath];
    if ([[self nameForIndexPath:indexPath] isEqualToString:@"appName"]) {
        if (!self.customView.superview) {
            [cell.customContentView addSubview:self.customView];
            [self.customView ifa_addLayoutConstraintsToFillSuperview];
        }
        [self.ifa_appearanceTheme setTextAppearanceForSelectedContentSizeCategoryInObject:self];
    }
    return cell;
}

#pragma mark - IFAFormViewControllerDelegate

- (void)formViewController:(IFAFormViewController *)a_formViewController didTapButtonNamed:(NSString *)a_buttonName {
    if ([a_buttonName isEqualToString:@"provideFeedbackButton"]) {
        [self IFA_onProvideFeedbackButtonTap];
    }else if ([a_buttonName isEqualToString:@"reportBugButton"]) {
        [self IFA_onReportBugButtonTap];
    }else if ([a_buttonName isEqualToString:@"forceCrashButton"]) {
        [self IFA_onForceCrashButtonTap];
    }
}

@end

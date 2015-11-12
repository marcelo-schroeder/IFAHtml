//
// Created by Marcelo Schroeder on 20/06/2014.
// Copyright (c) 2014 InfoAccent Pty Ltd. All rights reserved.
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

#import "IFACoreUI.h"

static char c_helpBarButtonItemKey;

@interface UIViewController (IFAHelp_Private)
@property (nonatomic, strong) UIBarButtonItem *ifa_helpBarButtonItem;
@end

@implementation UIViewController (IFACoreUI_Help)

#pragma mark - Public

-(UIBarButtonItem*)ifa_helpBarButtonItem {
    UIBarButtonItem *obj = objc_getAssociatedObject(self, &c_helpBarButtonItemKey);
    if (!obj && [[IFAHelpManager sharedInstance] shouldEnableHelpForViewController:self]) {
        obj = [[IFAHelpManager sharedInstance] newHelpBarButtonItemForViewController:self selected:NO];
        self.ifa_helpBarButtonItem = obj;
    }
    return obj;
}

-(void)setIfa_helpBarButtonItem:(UIBarButtonItem*)a_helpBarButtonItem{
    objc_setAssociatedObject(self, &c_helpBarButtonItemKey, a_helpBarButtonItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
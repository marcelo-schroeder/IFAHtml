//
// Created by Marcelo Schroeder on 22/04/15.
// Copyright (c) 2015 InfoAccent Pty Ltd. All rights reserved.
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

#import <Foundation/Foundation.h>

@interface NSObject (IFAFoundation)

/**
* Coalesce multiple calls to a selector into one call at the next turn of the current run loop.
* @param sel Selector to execute in a coalesced manner.
*/
- (void)ifa_coalescedPerformSelector:(SEL)sel;

/**
* Convenience method to return the bundle for the receiver's class.
* @returns Bundle for the receiver's class.
*/
+ (NSBundle *)ifa_classBundle;

@end
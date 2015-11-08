//
//  IFAColorSchemeTest.m
//  Gusty
//
//  Created by Marcelo Schroeder on 13/11/12.
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

@import IFACoreUI;
#import "IFAColorSchemeTest.h"

@implementation IFAColorSchemeTest

-(void)testEquality{
    
    // Equal
    NSArray *l_colors1 = @[
    [UIColor colorWithRed:0.0 green:0.1 blue:0.2 alpha:0.3],
    [UIColor colorWithRed:0.4 green:0.5 blue:0.6 alpha:0.7],
    ];
    NSArray *l_colors2 = @[
    [UIColor colorWithRed:0.0 green:0.1 blue:0.2 alpha:0.3],
    [UIColor colorWithRed:0.4 green:0.5 blue:0.6 alpha:0.7],
    ];
    XCTAssertTrue([l_colors1 isEqual:l_colors1]);
    IFAColorScheme *l_colorScheme1 = [[IFAColorScheme alloc] initWithColors:l_colors1];
    IFAColorScheme *l_colorScheme2 = [[IFAColorScheme alloc] initWithColors:l_colors2];
    XCTAssertTrue([l_colorScheme1 isEqual:l_colorScheme2]);
    
    // Not Equal
    NSArray *l_colors3 = @[
    [UIColor colorWithRed:0.0 green:0.1 blue:0.2 alpha:0.3],
    [UIColor colorWithRed:0.4 green:0.5 blue:0.6 alpha:0.7],
    ];
    NSArray *l_colors4 = @[
    [UIColor colorWithRed:0.0 green:0.1 blue:0.2 alpha:0.3],
    [UIColor colorWithRed:0.4 green:0.5 blue:0.6 alpha:0.8],
    ];
    XCTAssertFalse([l_colors3 isEqual:l_colors4]);
    IFAColorScheme *l_colorScheme3 = [[IFAColorScheme alloc] initWithColors:l_colors3];
    IFAColorScheme *l_colorScheme4 = [[IFAColorScheme alloc] initWithColors:l_colors4];
    XCTAssertFalse([l_colorScheme3 isEqual:l_colorScheme4]);

}

@end

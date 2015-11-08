//
//  TempTest.m
//  Gusty
//
//  Created by Marcelo Schroeder on 24/09/11.
//  Copyright 2011 InfoAccent Pty Limited. All rights reserved.
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

#import "TempTest.h"

@implementation TempTest

- (void)test {

    NSScanner *l_scanner = [NSScanner scannerWithString:@"1.4l5(0 12"];
    NSMutableString *l_numberString = [@"" mutableCopy];


    while (![l_scanner isAtEnd]) {
        NSString *l_buffer;
        if ([l_scanner scanCharactersFromSet:[NSCharacterSet decimalDigitCharacterSet] intoString:&l_buffer]) {
            [l_numberString appendString:l_buffer];
        } else {
            [l_scanner setScanLocation:([l_scanner scanLocation] + 1)];
        }
    }

    NSLog(@"l_numberString: %@", l_numberString);
}

@end

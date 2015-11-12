//
//  UITableView+IFACategory.h
//  IFACoreUI
//
//  Created by Marcelo Schroeder on 20/01/12.
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

@interface UITableView (IFACoreUI)

-(void)ifa_deleteRowsAtIndexPaths:(NSArray *)indexPaths;

/**
* Use method to check if a cell at a given index path is "fully" visible or not.
* @param a_indexPath Index path of cell to check the visibility for.
* @returns YES if the cell at the index path provided is "fully" visible.
*/
- (BOOL)ifa_isCellFullyVisibleForRowAtIndexPath:(NSIndexPath *)a_indexPath;

@end
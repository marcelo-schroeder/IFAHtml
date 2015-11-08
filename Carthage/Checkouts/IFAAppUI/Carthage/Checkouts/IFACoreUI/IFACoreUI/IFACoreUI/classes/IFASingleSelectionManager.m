//
//  IFASingleSelectionManager.m
//  Gusty
//
//  Created by Marcelo Schroeder on 18/10/10.
//  Copyright 2010 InfoAccent Pty Limited. All rights reserved.
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


@implementation IFASingleSelectionManager

#pragma mark - Public

- (id)initWithSelectionManagerDataSource:(id<IFASelectionManagerDataSource>)a_dataSource selectedObject:(id)a_selectedObject{
    NSMutableArray *l_selectedObjects = [NSMutableArray array];
    if (a_selectedObject) {
        [l_selectedObjects addObject:a_selectedObject];
    }
	return [super initWithSelectionManagerDataSource:a_dataSource selectedObjects:l_selectedObjects];
}

- (id)selectedObject{
    if ([self.selectedObjects count]==0) {
        return nil;
    }else{
        NSAssert([self.selectedObjects count]==1, @"Unexpected array size: %lu, array: %@", (unsigned long)[self.selectedObjects count], [self.selectedObjects description]);
        return self.selectedObjects[0];
    }
}

- (void)setSelectedObject:(id)a_object{
    NSAssert([self.selectedObjects count]<=1, @"Unexpected array size: %lu", (unsigned long)[self.selectedObjects count]);
    [self.selectedObjects removeAllObjects];
    if (a_object) {
        [self.selectedObjects addObject:a_object];
    }
}

- (NSIndexPath*)selectedIndexPath{
    if ([self.selectedIndexPaths count]==0) {
        return nil;
    }else{
        NSAssert([self.selectedIndexPaths count]==1, @"Unexpected array size: %lu", (unsigned long)[self.selectedIndexPaths count]);
        return self.selectedIndexPaths[0];
    }
}

@end

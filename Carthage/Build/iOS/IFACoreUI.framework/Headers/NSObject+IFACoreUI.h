//
//  NSObject+IFACategory.h
//  Gusty
//
//  Created by Marcelo Schroeder on 28/02/12.
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

@class NSPropertyDescription;

@interface NSObject (IFACoreUI)

// Defined as a property so that runtime introspection can pick it up as a property and things like localised and case-insensitive sorting in lists work correctly
@property (nonatomic, strong, readonly) NSString *ifa_displayValue;

// Defined as a property so that runtime introspection can pick it up as a property and things like localised and case-insensitive sorting in lists work correctly
@property (nonatomic, strong, readonly) NSString *ifa_longDisplayValue;

/**
* Used for common initialisation.
* To be called by init methods.
* Subclasses can override this.
*/
- (void)ifa_commonInit;

- (id)ifa_propertyValueForIndexPath:(NSIndexPath *)anIndexPath inForm:(NSString *)aFormName createMode:(BOOL)aCreateMode;
- (NSString*)ifa_propertyNameForIndexPath:(NSIndexPath *)anIndexPath inForm:(NSString *)aFormName createMode:(BOOL)aCreateMode;
- (NSString*)ifa_propertyStringValueForName:(NSString *)a_propertyName calendar:(NSCalendar *)a_calendar value:(id)a_value;
- (NSString*)ifa_propertyStringValueForName:(NSString *)a_propertyName calendar:(NSCalendar*)a_calendar;
- (NSString*)ifa_propertyStringValueForIndexPath:(NSIndexPath *)anIndexPath inForm:(NSString *)aFormName
                                      createMode:(BOOL)aCreateMode calendar:(NSCalendar*)a_calendar;
- (NSString*)ifa_entityLabel;
- (void)ifa_setValue:(id)aValue forProperty:(NSString *)aKey;
- (NSString*)ifa_entityName;
- (NSPropertyDescription*)ifa_descriptionForProperty:(NSString*)aPropertyName;
- (NSString*)ifa_labelForProperty:(NSString*)aPropertyName;
- (NSUInteger)ifa_fractionDigitsForProperty:(NSString*)aPropertyName;
- (NSNumberFormatter*)ifa_numberFormatterForProperty:(NSString*)aPropertyName;
- (NSNumber*)ifa_minimumValueForProperty:(NSString*)a_propertyName;
- (NSNumber*)ifa_maximumValueForProperty:(NSString*)a_propertyName;

+ (NSString*)ifa_displayValueForNil;

/**
* Convenience method to return an image from the receiver's class bundle.
* @param a_imageName Name of the image to be returned.
* @returns Image from the receiver's class bundle.
*/
+ (UIImage *)ifa_classBundleImageNamed:(NSString *)a_imageName;

@end

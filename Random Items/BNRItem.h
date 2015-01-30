//
//  BNRItem.h
//  Random Items
//
//  Created by Ryan D'souza on 1/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property BNRItem *containedItem;
@property BNRItem *containerItem;

@property NSString *itemName;
@property NSString *serialNumber;
@property int value;
@property NSDate *dateCreated;

+ (instancetype) randomItem;

- (instancetype) initWithItemName:(NSString *) name
                            value:(int) value
                            serialNumber:(NSString *) serial;

- (instancetype) initWithItemName:(NSString *) name;

- (instancetype) init;

- (void) dealloc;

@end

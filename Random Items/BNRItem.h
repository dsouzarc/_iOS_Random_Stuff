//
//  BNRItem.h
//  Random Items
//
//  Created by Ryan D'souza on 1/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *containerItem;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;

//@property (nonatomic) int value;
@synthesize age = _age;

@property (nonatomic, readonly, strong) NSDate *dateCreated;

+ (instancetype) randomItem;

- (instancetype) initWithItemName:(NSString *) name
                            value:(int) value
                            serialNumber:(NSString *) serial;

- (instancetype) initWithItemName:(NSString *) name;

- (instancetype) init;

- (void) dealloc;

@end

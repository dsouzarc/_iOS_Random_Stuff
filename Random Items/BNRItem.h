//
//  BNRItem.h
//  Random Items
//
//  Created by Ryan D'souza on 1/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _value;
    NSDate *_dateCreated;
    
    BNRItem *_containedItem;
    __weak BNRItem *_container;
}

+ (instancetype) randomItem;

- (instancetype) initWithItemName:(NSString *) name
                            value:(int) value
                            serialNumber:(NSString *) serial;

- (instancetype) initWithItemName:(NSString *) name;

- (instancetype) init;

- (void) setItemName:(NSString *) name;
- (NSString *) itemName;

- (void) setSerialNumber:(NSString *) serialNumber;
- (NSString *) serialNumber;

- (void) setValue:(int) value;
- (int) value;

- (NSDate *) dateCreated;
- (NSString *) description;

- (void) dealloc;

- (void)setContainedItem:(BNRItem *)item;
- (BNRItem *)containedItem;

- (void)setContainer:(BNRItem *)item;
- (BNRItem *)container;

@end

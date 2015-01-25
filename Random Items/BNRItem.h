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
}

- (void) setItemName:(NSString *) name;
- (NSString *) itemName;

- (void) setSerialNumber:(NSString *) serialNumber;
- (NSString *) serialNumber;

- (void) setValue:(int) value;
- (int) value;

- (NSDate *) dateCreated;

@end
//
//  BNRItem.m
//  Random Items
//
//  Created by Ryan D'souza on 1/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (void) setItemName:(NSString *)name
{
    _itemName = name;
}

- (NSString *)itemName
{
    return _itemName;
}

- (void) setSerialNumber:(NSString *)serialNumber
{
    _serialNumber = serialNumber;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void) setValue:(int)value
{
    _value = value;
}

- (int) value
{
    return _value;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

@end

//
//  BNRItem.m
//  Random Items
//
//  Created by Ryan D'souza on 1/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype) randomItem
{
    
    
}

//"Designated initializer" that calls parent
- (instancetype) initWithItemName:(NSString *)name value:(int)value serialNumber:(NSString *)serial
{
    //Super class initializer
    self = [super init];
    
    //If the initializer worked
    if(self) {
        _itemName = name;
        _value = value;
        _serialNumber = serial;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

//Calls designated initializer
- (instancetype) initWithItemName:(NSString *)name
{
    return [self initWithItemName:name value:0 serialNumber:@"1A"];
}

//Calls constructor that calls designated initializer
- (instancetype) init
{
    return [self initWithItemName:@"Blank Item"];
}

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

- (NSString *)description
{
    NSString *itemDeets = [[NSString alloc] initWithFormat:@"%@ (%@) Cost: $%d, recorded on: %@",
                           self.itemName, self.serialNumber, self.value, self.dateCreated];
    return itemDeets;
}

@end

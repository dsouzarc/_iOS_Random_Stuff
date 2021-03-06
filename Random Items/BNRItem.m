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
    NSArray *randomItemAdjectives = @[@"Big", @"Red", @"Blue", @"Yellow", @"Skinny"];
    NSArray *randomItems = @[@"Shirt", @"Pant", @"Socks", @"Shoes"];
    
    NSInteger randomAdjective = arc4random() % [randomItemAdjectives count];
    NSInteger randomItem = arc4random() % [randomItems count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomItemAdjectives[randomAdjective],
                            randomItems[randomItem]];
                            
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%d", arc4random()];
    
    BNRItem *theItem = [[self alloc] initWithItemName:randomName value:arc4random() serialNumber:randomSerialNumber];
    
    return theItem;
}

//"Designated initializer" that calls parent
- (instancetype) initWithItemName: (NSString *)name
                            value: (int)value
                            serialNumber: (NSString *)serial
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

- (void) setContainedItem:(BNRItem *)containedItem
{
    _containedItem = containedItem;
    self.containedItem.containerItem = self;
}

- (NSString *)description
{
    NSString *itemDeets = [[NSString alloc] initWithFormat:@"%@ (%@) Cost: $%d, recorded on: %@",
                           self.itemName, self.serialNumber, self.value, self.dateCreated];
    return itemDeets;
}

- (void) dealloc
{
    NSLog(@"Destroyed: %@", self);
}

@end

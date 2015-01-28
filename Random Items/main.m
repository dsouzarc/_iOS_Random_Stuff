//
//  main.m
//  Random Items
//
//  Created by Ryan D'souza on 1/20/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *firstArray = [[NSMutableArray alloc] init];
        
        [firstArray addObject: @"One"];
        [firstArray addObject: @"Two"];
        [firstArray addObject: @"Three"];
        [firstArray addObject: @"Four"];
        [firstArray addObject: @"Five"];
        [firstArray insertObject: @"Zero" atIndex: 0];
        
        for(int i = 0; i < [firstArray count]; i++) {
            NSLog(@"%@", [firstArray objectAtIndex: i]);
        }
        
        for(NSString *item in firstArray) {
            NSLog(@"%@", item);
        }
        
        //Release memory
        firstArray = nil;
        
        float aFloat = 3.0;
        NSLog(@"%f", aFloat);
        
        firstArray = [[NSMutableArray alloc] init];
        
        BNRItem *firstItem = [[BNRItem alloc] init];
        [firstItem setItemName:@"Macbook Pro"];
        [firstItem setSerialNumber:@"A1B2C3"];
        firstItem.value = 3000;
        
        NSLog(@"%@ %d %@ %@", firstItem.itemName, firstItem.value, firstItem.serialNumber, firstItem.dateCreated);
        NSLog(@"AKA: %@", firstItem);
        
        [firstArray addObject: firstItem];
   
        firstItem = nil;
        NSLog(@"First item value: %@", firstItem);
        NSLog(@"Last first array value: %@", [firstArray objectAtIndex: 0]);
        
        firstItem = [[BNRItem alloc] initWithItemName:@"New MBPro" value:6000 serialNumber:@"D4E5F6"];
        NSLog(@"Using new constructor: %@", firstItem);
    }
    return 0;
}

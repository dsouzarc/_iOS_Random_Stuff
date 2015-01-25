//
//  main.m
//  Random Items
//
//  Created by Ryan D'souza on 1/20/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        
        
    }
    return 0;
}

//
//  main.m
//  RandomItems
//
//  Created by Karan Jivani on 7/7/16.
//  Copyright © 2016 Karan Jivani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KRNItems.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //creates a mutable array object, Store its address in item variable
        NSMutableArray *items = [[NSMutableArray alloc]init];
  /*
        //send the message addObject: to the NSMutableArray
        //pointed to by the variable items, passing a string each time
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
//        for (int i = 0; i < items.count; i++) {
//            NSString *item = [items objectAtIndex:i];
//            NSLog(@"%@",item);
//        }
//        
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        //destroy the mutable array object
        
        KRNItems *item = [[KRNItems alloc]initWithItemName:@"MacBkko Pro" valueInDollars:7650 serialNumber:@"KHS34FR"];
        
//        [item setItemName:@"iPad Pro"];
//        [item setSerialNumber:@"cg123HjK"];
//        [item setValueInDollar:440];
        
//        item.itemName = @"MacBook Pro";
//        item.serialNumber = @"abc3344";
//        item.valueInDollar = 1240;
        
        [item dateCreated];
        
//        NSLog(@"%@ %@ %@ %d",[item itemName], [item dateCreated], [item serialNumber], [item valueInDollar]);
        NSLog(@"%@",item);
        
        KRNItems *itemWithName = [[KRNItems alloc]initWithItemName:@"iPad Pro"];
        NSLog(@"%@",itemWithName);
        
        KRNItems *itemWithNoName = [[KRNItems alloc]init];
        NSLog(@"%@",itemWithNoName);
        
   */
        for (int i = 0; i < 10; i++) {
            
            KRNItems *item = [KRNItems randomItem];
            [items addObject:item];
        }
        
        for (KRNItems *item in items) {
            NSLog(@"%@",item);
        }
        
//        NSLog(@"%@",[items objectAtIndex:11]);
        
        items = nil;
    
    }
    return 0;
}

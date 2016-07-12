//
//  KRNItems.h
//  RandomItems
//
//  Created by Karan Jivani on 7/7/16.
//  Copyright © 2016 Karan Jivani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KRNItems : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+(instancetype) randomItem;

-(instancetype)initWithItemName : (NSString*)name
                  valueInDollars:(int)value
                    serialNumber:(NSString*)sNumber;

-(instancetype)initWithItemName : (NSString*)name;

//-(instancetype)initwithItemName : (NSString*)name
//                   serialNumber : (NSString*)serialNumber;

-(void)setItemName:(NSString*)str;
-(NSString *)itemName;

-(void) setSerialNumber: (NSString *)str;
-(NSString *) serialNumber;

-(void) setValueInDollar: (int)v;
-(int) valueInDollar;

-(NSDate *) dateCreated;

@end

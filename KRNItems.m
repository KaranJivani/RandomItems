//
//  KRNItems.m
//  RandomItems
//
//  Created by Karan Jivani on 7/7/16.
//  Copyright © 2016 Karan Jivani. All rights reserved.
//

#import "KRNItems.h"

@implementation KRNItems

-(instancetype)initWithItemName: (NSString *)name
                 valueInDollars: (int)value
                   serialNumber: (NSString *)sNumber {
    
    //call the superclass's designated initializer
    self = [super init];
    
    //did the superclass's initializer succeed?
    if (self) {
        //give the instance variables intial value
        itemName = name;
        serialNumber = sNumber;
        valueInDollars = value;
        dateCreated = [[NSDate alloc]init];
    }
    
    //Return the address of the newly initialized object
    return self;
}

+(instancetype)randomItem {
    
    //Create an immutable array of three adjective
    NSArray *randomAdjectiveList = @[@"Fliffy",@"Rusty",@"Shiny"];
    //Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear",@"Spork",@"Mac"];
    
    //Get the index of a random adjective/noun from the list
    /*Note : the % operator, called the modulo operator gives you the remainder. so adjectiveIndex is the random number from 0 to 2 inclusive. */
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    //Note thet NSinteger is not an object but the type defination for "long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",[randomAdjectiveList objectAtIndex:adjectiveIndex],[randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0'+arc4random()%10,'A'+arc4random()%26,'0'+arc4random()%10,'A'+arc4random()%26,'0'+arc4random()%10];
    
    KRNItems *newItem = [[self alloc]initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
}

-(instancetype)initWithItemName:(NSString *)name {
    
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

-(instancetype)init {
    
    return[self initWithItemName:@"item"];
}

-(void)setItemName:(NSString*)str {
    itemName = str;
}
-(NSString *) itemName {
    return itemName;
}

-(void) setSerialNumber: (NSString *)str {
    serialNumber = str;
}
-(NSString *) serialNumber {
    return serialNumber;
}

-(void) setValueInDollar: (int)v {
    valueInDollars = v;
}
-(int) valueInDollar {
    return valueInDollars;
}

-(NSDate *) dateCreated {
    
    return dateCreated;
}

-(NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (Model %@): Worth $%d, recorded on %@",
     self.itemName,
     self.serialNumber,
     self.valueInDollar,
     self.dateCreated];
    
    return descriptionString;
}

@end

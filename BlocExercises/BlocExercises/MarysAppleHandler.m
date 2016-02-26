//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    
    if (dollars <= 4) {
        itemToReturn = @"get out of my store";
    } else if (dollars == 5) {
        itemToReturn = @"have some gum";
    } else if (dollars < 1000){
        itemToReturn = @"have an apple";
    } else if (dollars < 1000000000) {
        itemToReturn = @"have an Apple computer";
    } else {
        itemToReturn = @"have The Big Apple";
    }

    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = 24;
    
    cost *= self.getsDiscount ? .75 : 1;
    
    return cost;
}

@end

//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int numberValue = [number intValue] * 2;
    NSNumber *numberToReturn =  [[NSNumber alloc] initWithInt:numberValue];
    return numberToReturn;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *arrayToReturn = [NSMutableArray new];
    for (NSInteger start = MIN(number, otherNumber); start <= MAX(number, otherNumber); start++) {
        [arrayToReturn addObject:[[NSNumber alloc] initWithInteger:start]];
    }
    return arrayToReturn;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    id obj = arrayOfNumbers[0];
    NSInteger min = [obj integerValue];
    for (NSNumber *currentNumber in arrayOfNumbers) {
        min = MIN([currentNumber integerValue], min);
    }
    return min;
}

@end

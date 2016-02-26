//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *numbers = [[NSMutableString alloc] init];
    NSInteger lowNumber = number;
    NSInteger highNumber = otherNumber;
    if (number > otherNumber) {
        lowNumber = otherNumber;
        highNumber = number;
    }
    for (NSInteger i = lowNumber; i <= highNumber; i++){
        [numbers appendString:[NSString stringWithFormat:@"%ld", i]];
    }
    
    return numbers;
}

@end

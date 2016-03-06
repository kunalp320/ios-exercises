//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arrayToRemeber = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copiedArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floatValue = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {

    return self.arrayToRemeber;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return [self.copiedArray mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    return self.floatValue;
}

@end
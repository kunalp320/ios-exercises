//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {

    NSMutableArray *sortedArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [sortedArray sortUsingDescriptors:@[sortDescriptor]];
    return (NSArray*)sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSArray *worfArrays = [[NSArray alloc] init];
    worfArrays = [characterArray filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"]];
    if(worfArrays.count > 0) {
        return YES;
    }
    return NO;
}

@end

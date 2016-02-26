//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *sentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return sentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange range = [[cheeseName lowercaseString] rangeOfString:@" cheese"];
        return [cheeseName stringByReplacingCharactersInRange:range withString:@""];
    }

    return cheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    if (cheeseCount == 1) {
        return [NSString stringWithFormat:@"%lu cheese", cheeseCount];
    } else {
        return [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
    }
}

@end


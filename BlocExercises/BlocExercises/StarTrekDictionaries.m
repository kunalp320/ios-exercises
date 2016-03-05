//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        return (NSString*)favoriteDrink;
    }
    return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *arrayOfDrinks = [[NSMutableArray alloc] init];
    for (NSDictionary *currentCharacter in charactersArray) {
        NSString *favoriteDrink = [self favoriteDrinkForStarTrekCharacterDictionary:currentCharacter];
        if (favoriteDrink != nil) {
            [arrayOfDrinks addObject:favoriteDrink];
        }
    }
    return arrayOfDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *characterDict = [characterDictionary mutableCopy];
    characterDict[@"quote"] = @"Memorable quote";
    return characterDict;
}

@end

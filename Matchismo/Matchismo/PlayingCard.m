//
//  PlayingCard.m
//  Matchismo
//
//  Created by Dani Castro on 23/01/14.
//  Copyright (c) 2014 Dani Castro. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

-(NSString *) content {
    NSArray *rankString = [PlayingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
    
}

+(NSArray *) validSuits {
     return @[@"♣︎",@"♠︎",@"♥︎",@"♦︎"];
}

+(NSUInteger)maxRank {
    return [[PlayingCard rankStrings] count] - 1;
}

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit ]) {
        _suit = suit;
    }
}

- (NSString *) suit {
    return _suit ? _suit : @"?";
}

+(NSArray *) rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"J",@"Q",@"K"];
}



@end

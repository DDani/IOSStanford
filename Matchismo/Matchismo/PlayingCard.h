//
//  PlayingCard.h
//  Matchismo
//
//  Created by Dani Castro on 23/01/14.
//  Copyright (c) 2014 Dani Castro. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property(strong,nonatomic) NSString *suit;
@property(nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end

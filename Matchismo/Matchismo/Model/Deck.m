//
//  Deck.m
//  Matchismo
//
//  Created by Dani Castro on 23/01/14.
//  Copyright (c) 2014 Dani Castro. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property(nonatomic) NSMutableArray *cards;

@end

@implementation Deck

-(NSMutableArray *) cards {
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void) addCard:(Card *) card
{
    [self addCard:card atTop:FALSE];
}

-(void) addCard:(Card *) card atTop:(BOOL)atTop
{
    if(atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

-(Card *) drawRandomCard
{
    Card *card = nil;
    if ([self.cards count]) {
        int index = arc4random() % [self.cards count];
        card = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return card;
   
}

@end

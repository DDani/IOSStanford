//
//  Deck.h
//  Matchismo
//
//  Created by Dani Castro on 23/01/14.
//  Copyright (c) 2014 Dani Castro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard:(Card *) card;
-(void) addCard:(Card *) card atTop:(BOOL)atTop;

-(Card *) drawRandomCard;

@end

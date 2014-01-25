//
//  Card.m
//  Matchismo
//
//  Created by Dani Castro on 23/01/14.
//  Copyright (c) 2014 Dani Castro. All rights reserved.
//

#import "Card.h"

@implementation Card


-(int) match:(NSArray *)otherCards {
    int score;
    for (Card *card in otherCards) {
        if ([card.content isEqualToString:self.content]) {
            score = 1;
        }
    }
    return score;
}

@end

//
//  Card.h
//  Matchismo
//
//  Created by Dani Castro on 23/01/14.
//  Copyright (c) 2014 Dani Castro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString * content;
@property(nonatomic, getter = isChosen) BOOL Chosen;
@property(nonatomic, getter = isMatched) BOOL Matched;

-(int)match:(NSArray *)otherCards;

@end

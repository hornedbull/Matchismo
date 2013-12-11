//
//  PlayingCard.h
//  Matchismo
//
//  Created by Shah, Vatsal on 12/11/13.
//  Copyright (c) 2013 Vatsal's Factory. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end

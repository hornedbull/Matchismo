//
//  Deck.h
//  Matchismo
//
//  Created by Shah, Vatsal on 12/11/13.
//  Copyright (c) 2013 Vatsal's Factory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end

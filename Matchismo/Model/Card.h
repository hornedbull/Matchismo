//
//  Card.h
//  Matchismo
//
//  Created by Vatsal Shah on 11/3/13.
//  Copyright (c) 2013 Vatsal's Factory. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end

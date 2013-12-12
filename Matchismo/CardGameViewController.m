//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Shah, Vatsal on 10/24/13.
//  Copyright (c) 2013 Vatsal's Factory. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) NSInteger flipCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation CardGameViewController

- (Deck *) deck
{
    if (!_deck) {
        _deck = [self createDeck];
    }
    
    return _deck;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void) setFlipCount:(NSInteger)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %ld", (long)self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
        
    } else {
        NSString *drawnCard = [[self.deck drawRandomCard] contents];
        
        if (drawnCard) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:drawnCard forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}


@end

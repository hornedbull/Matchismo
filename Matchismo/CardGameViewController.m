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
@property (strong, nonatomic)Deck *playingDeck;

@end

@implementation CardGameViewController

- (Deck *) playingDeck
{
    if (!_playingDeck) {
        _playingDeck = [[PlayingCardDeck alloc] init];
    }
    
    return _playingDeck;
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
        
    } else {
        NSString *drawnCard = [[self.playingDeck drawRandomCard] contents];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        if (drawnCard) {
            [sender setTitle:drawnCard forState:UIControlStateNormal];
        } else {
            [sender setTitle:@"EMPTY" forState:UIControlStateNormal];
        }
    }
    self.flipCount++;
}


@end

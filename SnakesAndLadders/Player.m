//
//  Player.m
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-09.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = @{@4:@14,
                       @9:@31,
                       @17:@7,
                       @20:@38,
                       @28:@84,
                       @40:@59,
                       @52:@67,
                       @63:@81,
                       @64:@60,
                       @89:@26,
                       @95:@75,
                       @99:@78};
    }
    return self;
}

-(void) roll {
    
    
    int diceRolls;
    diceRolls = arc4random_uniform(5) + 1;
    _currentSquare += diceRolls;
    NSLog(@"The dice rolled %i", diceRolls);
    
    //convert NSInt to NSNum
    NSNumber *convertCurrentSquare = @(self.currentSquare);
    
    //assign NSNum var to value of key
    NSNumber *newValue = [_gameLogic objectForKey:convertCurrentSquare];

    if (newValue) {
        NSInteger newCurrentSquare = [newValue integerValue];
        _currentSquare = newCurrentSquare;
    }
    
    NSLog(@"You are now at %li", (long)_currentSquare);
}

@end

//
//  Player.m
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-09.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "Player.h"

@implementation Player


-(void) roll {
    int diceRolls;
    diceRolls = arc4random_uniform(5) + 1;
    NSLog(@"%i", diceRolls);

}

@end

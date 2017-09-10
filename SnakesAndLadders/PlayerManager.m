//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-10.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createPlayers:(NSInteger)newPlayer {
    for (int i = 0; i <= newPlayer ; i++) {
        Player *newPlayer = [[Player alloc] init];
        
        newPlayer.name = [NSString stringWithFormat:@"Player%i", i];
        
        [_players addObject:newPlayer];
        
    }
}

@end

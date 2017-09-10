//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-10.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray* players;

-(void)createPlayers:(NSInteger) newPlayer;


@end

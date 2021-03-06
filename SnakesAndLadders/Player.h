//
//  Player.h
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-09.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary* gameLogic;
@property NSString* output;
@property BOOL gameOver;
@property NSString* name;

-(void) roll;

@end

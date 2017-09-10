//
//  main.m
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-09.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        Player *newPlayer = [[Player alloc] init];
        
        while(gameOn) {
            
            InputCollector *newInputCollector = [[InputCollector alloc] init];
            
            NSString *userInput = [newInputCollector inputForPrompt:@"type ""roll"""];
            
            if ([userInput isEqual: @"roll"]) {
                    [newPlayer roll];
                if (newPlayer.gameOver == YES) {
                    break;
                }
            
            }
            
        }
    }
    return 0;
}

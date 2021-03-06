//
//  main.m
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-09.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PlayerManager.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        PlayerManager *newPlayerManager = [[PlayerManager alloc] init];
        Player *newPlayer = [[Player alloc] init];
        
        while(gameOn) {
            
            InputCollector *newInputCollector = [[InputCollector alloc] init];
            
            NSString *amountOfUsers = [newInputCollector inputForPrompt:@"Please input the number of players:"];
            NSInteger amountOfUsersInNum = [amountOfUsers intValue];
            
            if (amountOfUsersInNum <= 0) {
                NSLog(@"You entered 0 or a non-numeric value. Please input a nonzero numeric value:");
                [newInputCollector inputForPrompt:@"Please input the number of players:"];
            } else {                
                NSString *userInput = [newInputCollector inputForPrompt:@"type ""roll"""];
                
                if ([userInput isEqual: @"roll"]) {
                    [newPlayer roll];
                    if (newPlayer.gameOver == YES) {
                        break;
                    }
                    
                }
            }
            
            
            
        }
    }
    return 0;
}

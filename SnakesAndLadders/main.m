//
//  main.m
//  SnakesAndLadders
//
//  Created by Jaison Bhatti on 2017-09-09.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        while(gameOn) {
            
            InputCollector *newInputCollector = [[InputCollector alloc] init];
            
            NSString *userInput = [newInputCollector inputForPrompt:@"type ""roll"" or ""r"""];
            
            
        }
    }
    return 0;
}

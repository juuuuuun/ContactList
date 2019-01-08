//
//  main.m
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector* inputCollector = [[InputCollector alloc] init];
        
        while(YES) {
            
            
            NSString* usernameInput = [inputCollector inputForPrompt:@"What would you like do next? \nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application \n> "];
            
            // user input "quit" will quit the string after wishing user adieu
            if([usernameInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu");
                break;
            }
            
            
        }
    }
    return 0;
}

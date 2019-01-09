//
//  InputCollector.m
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "InputCollector.h"

@interface InputCollector () {
    NSMutableArray* _mutablePastCommands;
}

@end

@implementation InputCollector

-(instancetype)init {
    if([super init]) {
        _mutablePastCommands = [[NSMutableArray alloc] initWithObjects:@"History end reached", nil];
    }
    return self;
}

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    
    char userInput[255];
    fgets(userInput, 255, stdin);
    
    return [[[NSString alloc] initWithUTF8String:userInput] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSNumber *)inputForIntegerPrompt:(NSString *)promptString {
    NSString* integerOutput = [self inputForPrompt:promptString];
    
    if([integerOutput rangeOfCharacterFromSet:NSCharacterSet.decimalDigitCharacterSet.invertedSet ].location == NSNotFound) {
        return [[NSNumber alloc] initWithInteger:integerOutput.integerValue];
    } else {
        return nil;
    }
}

- (void)addCommand:(NSString *)command {
    [_mutablePastCommands insertObject:command atIndex:0];
    if(_mutablePastCommands.count > 3) {
        [_mutablePastCommands removeObjectAtIndex:_mutablePastCommands.count-1];
    }
}

-(void)listPastCommands {
    for(NSString* command in _mutablePastCommands) {
        NSLog(@"%@", command);
    }
}

-(NSArray *) pastCommands {
    return [[NSArray alloc] initWithArray:_mutablePastCommands];
}

@end

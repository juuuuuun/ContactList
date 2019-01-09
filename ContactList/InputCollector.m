//
//  InputCollector.m
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "InputCollector.h"


@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    
    char userInput[255];
    fgets(userInput, 255, stdin);
    
    return [[[NSString alloc] initWithUTF8String:userInput] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end

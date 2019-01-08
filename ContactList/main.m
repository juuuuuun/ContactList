//
//  main.m
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector* inputCollector = [[InputCollector alloc] init];
        ContactList* contactList = [[ContactList alloc] init];
        
        while(YES) {
            
            
            NSString* usernameInput = [inputCollector inputForPrompt:@"What would you like do next? \nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application \n> "];
            
            // user input "quit" will quit the string after wishing user adieu
            if([usernameInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu");
                break;
            }
            
            if([usernameInput isEqualToString:@"new"]) {
                // create new contact
                NSString* newContactNameInput = [inputCollector inputForPrompt:@"What is the full name of the new contact?"];
                
                NSString* newContactEmailInput = [inputCollector inputForPrompt:@"What is the email address of the new contact?"];
                
                Contact* newContact = [[Contact alloc] initWithFullName:newContactNameInput emailAddress:newContactEmailInput];
                
                [contactList addContact:newContact];
            }
            
            if([usernameInput isEqualToString:@"list"]) {
                // Print out the list of contacts
                [contactList printOutContactList];
            }
        }
    }
    return 0;
}

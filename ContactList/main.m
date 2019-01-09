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
            
            NSString* usernameInput = [inputCollector inputForPrompt:@"What would you like do next? \nnew - Create a new contact \nlist - List all contacts \nshow - Show a contact in the list (needs second argument: id e.g. show 9) \nfind - Search the list (needs second argument searchTerm e.g. find ted) \nhistory - Print the last 3 commands \nquit - Exit Application \n> "];

            // user input "quit" will quit the string after wishing user adieu
            if([usernameInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu");
                break;
            } else if([usernameInput isEqualToString:@"new"]) {
                // create new contact
                NSString* newContactEmailInput = [inputCollector inputForPrompt:@"What is the email address of the new contact?"];

                if([contactList isContactInList:newContactEmailInput]) {
                    NSLog(@"Contact already in the list");
                    continue;
                }

                NSString* newContactNameInput = [inputCollector inputForPrompt:@"What is the full name of the new contact?"];

                Contact* newContact = [[Contact alloc] initWithFullName:newContactNameInput emailAddress:newContactEmailInput];

                [contactList addContact:newContact];
            } else if([usernameInput isEqualToString:@"list"]) {
                // Print out the list of contacts
                [contactList printOutContactList];
            } else if(usernameInput.length > 4 && [[usernameInput substringToIndex:4] isEqualToString:@"show"]) {
                NSString* searchId = [usernameInput substringFromIndex:5];

                if( [searchId rangeOfCharacterFromSet:NSCharacterSet.decimalDigitCharacterSet.invertedSet ].location == NSNotFound) {
                    [contactList displayContactAtIndex:[searchId intValue]];
                } else {
                    NSLog(@"Given ID is not an integer");
                }
                
            } else if(usernameInput.length == 4 && [usernameInput isEqualToString:@"show"]) {
                NSLog(@"show command needs a second argument to work properly");
                NSLog(@"e.g. show 9");
            } else if(usernameInput.length > 4 && [[usernameInput substringToIndex:4] isEqualToString:@"find"]) {
                NSString* searchTerm = [usernameInput substringFromIndex:5];
                [contactList searchListAndDisplayContactWithTerm:searchTerm];
            } else if(usernameInput.length == 4 && [usernameInput isEqualToString:@"find"]) {
                NSLog(@"find command needs a second argument to work properly");
                NSLog(@"e.g. find ted");
            } else if([usernameInput isEqualToString:@"history"]) {
                // Print history
                ;
            } else {
                NSLog(@"Invalid command");
            }
        }
    }
    return 0;
}

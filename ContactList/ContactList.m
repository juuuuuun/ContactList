//
//  ContactList.m
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype)init {
    if([super init]) {
        _listOfContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact {
    [self.listOfContacts addObject:newContact];
}

-(void)printOutContactList {
    for(int i = 0; i < self.listOfContacts.count; i++) {
        Contact* contactInList = [self.listOfContacts objectAtIndex:i];
        NSLog(@"%i: <%@> (%@)", i, contactInList.fullName, contactInList.emailAddress);
        if( contactInList.phoneNumbers.count > 0) {
            NSLog(@"Phone numbers of this contact: ");
            for(NSString* label in contactInList.phoneNumbers) {
                NSLog(@"%@: %@", label, [contactInList.phoneNumbers objectForKey:label]);
            }
        }
    }
}

-(void)displayContactAtIndex:(NSUInteger)index {
    if(index >= self.listOfContacts.count) {
        NSLog(@"Not found");
    } else {
        Contact* contactAtIndex = [self.listOfContacts objectAtIndex:index];
        NSLog(@"ID: %lu", index);
        NSLog(@"Full name: %@", contactAtIndex.fullName);
        NSLog(@"Email address: %@", contactAtIndex.emailAddress);
        if( contactAtIndex.phoneNumbers.count > 0) {
            NSLog(@"Phone numbers of this contact: ");
            for(NSString* label in contactAtIndex.phoneNumbers) {
                NSLog(@"%@: %@", label, [contactAtIndex.phoneNumbers objectForKey:label]);
            }
        }
        
    }
}

-(void)searchListAndDisplayContactWithTerm:(NSString *)term {
    int printCount = 0;
    for(Contact* contact in self.listOfContacts) {
        if([contact.fullName localizedCaseInsensitiveContainsString:term] ||
           [contact.emailAddress localizedCaseInsensitiveContainsString:term] ) {
            [self displayContactAtIndex: [self.listOfContacts indexOfObject:contact]];
            printCount++;
        }
    }
    if( printCount == 0 ) {
        NSLog(@"Not found");
    }
}

-(BOOL)isContactInList:(NSString *)emailAddress {
    for(Contact* contact in self.listOfContacts) {
        if([contact.emailAddress isEqualToString:emailAddress]) {
            return YES;
        }
    }
    return NO;
}

@end

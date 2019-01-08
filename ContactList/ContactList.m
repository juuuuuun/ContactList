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
    }
}

@end

//
//  ContactList.h
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray* listOfContacts;

- (void) addContact:(Contact *)newContact;

- (void) printOutContactList;

- (void) displayContactAtIndex:(NSUInteger)index;

- (void) searchListAndDisplayContactWithTerm:(NSString *)term;

- (BOOL) isContactInList:(NSString *)emailAddress;

@end

NS_ASSUME_NONNULL_END

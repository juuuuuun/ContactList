//
//  Contact.h
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, strong) NSString* fullName;
@property (nonatomic, strong) NSString* emailAddress;
@property (nonatomic, strong, readonly) NSDictionary* phoneNumbers;

- (instancetype) initWithFullName:(NSString *)fullName
                     emailAddress:(NSString *)emailAddress;

- (void) addPhoneNumber:(NSString *)phoneNumber
               andLabel:(NSString *)label;

@end

NS_ASSUME_NONNULL_END

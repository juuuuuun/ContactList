//
//  Contact.m
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "Contact.h"

@interface Contact () {
 
    NSMutableDictionary* _mutablePhoneNumbers;
}

@end

@implementation Contact

-(instancetype)init {
    return [self initWithFullName:@"Sample Name" emailAddress:@"sampleEmail@email.com"];
}

-(instancetype)initWithFullName:(NSString *)fullName emailAddress:(NSString *)emailAddress {
    if([super init]) {
        _fullName = fullName;
        _emailAddress = emailAddress;
        _mutablePhoneNumbers = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)addPhoneNumber:(NSString *)phoneNumber andLabel:(NSString *)label {
    [_mutablePhoneNumbers setObject:phoneNumber forKey:label];
}

-(NSDictionary *) phoneNumbers {
    return [[NSDictionary alloc] initWithDictionary:_mutablePhoneNumbers];
}


@end

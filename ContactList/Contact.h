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

- (instancetype) initWithFullName:(NSString *)fullName
                     emailAddress:(NSString *)emailAddress;

@end

NS_ASSUME_NONNULL_END

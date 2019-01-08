//
//  InputCollector.h
//  ContactList
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

- (NSString *) inputForPrompt:(NSString *)promptString;

@end

NS_ASSUME_NONNULL_END

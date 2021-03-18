//
//  JCMediatorProtocol+JCUserService.m
//  JCUserService
//
//  Created by Jam Jia on 12/30/19.
//

#import "JCMediatorProtocol+UserService.h"

NSString * const kJCMediatorUserService = @"UserService";

@implementation JCMediatorProtocol (UserService)

- (id<UserService>)provideUserService {
    return [self getServiceProvide:kJCMediatorUserService withProtocl:@protocol(UserService) shouldCacheService:YES];
}

@end

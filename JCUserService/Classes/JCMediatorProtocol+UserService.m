//
//  JCMediatorProtocol+JCUserService.m
//  JCUserService
//
//  Created by Jam Jia on 12/30/19.
//

#import "JCMediatorProtocol+UserService.h"

NSString * const kJCMediatorService = @"UserService";

@implementation JCMediatorProtocol (UserService)

- (id<UserService>)provideUserService {
    return [self getServiceProvide:kJCMediatorService withProtocl:@protocol(UserService) shouldCacheService:YES];
}

@end

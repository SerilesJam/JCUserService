//
//  JCUserService.m
//  JCUserService
//
//  Created by Jam Jia on 12/30/19.
//

#import "JCUserService.h"
#import "JCMediatorProtocol+UserService.h"
#import "JCLoginViewController.h"

@interface JCUserService () <UserService>

@end

@implementation JCUserService

- (UIViewController *)loginViewController {
    NSBundle *bundle = [NSBundle bundleWithPath:[jc_currentBundle pathForResource:[[jc_currentBundle infoDictionary] objectForKey:@"CFBundleName"] ofType:@"bundle"]];
    
    JCLoginViewController *loginViewController = [[JCLoginViewController alloc] initWithNibName:@"JCLoginViewController" bundle:bundle];
    
    return loginViewController;
}

@end

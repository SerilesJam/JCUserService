//
//  JCUserService.m
//  JCUserService
//
//  Created by Jam Jia on 12/30/19.
//

#import "JCUserService.h"
#import "JCLoginViewController.h"

@interface JCUserService () <UserService>

@end

@implementation JCUserService

- (UIViewController *)loginViewController {
    NSBundle *bundle = [NSBundle bundleWithURL:[jc_currentBundle URLForResource:[[jc_currentBundle infoDictionary] objectForKey:@"CFBundleName"] withExtension:@"bundle"]];
    
    JCLoginViewController *loginViewController = [[JCLoginViewController alloc] initWithNibName:@"JCLoginViewController" bundle:bundle];
    
    return loginViewController;
}

@end

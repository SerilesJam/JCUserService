//
//  JCViewController.m
//  JCUserService
//
//  Created by Jam on 12/30/2019.
//  Copyright (c) 2019 Jam. All rights reserved.
//

#import "JCViewController.h"
#import <JCUserService/JCMediatorProtocol+UserService.h>

@interface JCViewController ()

@end

@implementation JCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)handleLogic:(id)sender {
    id<UserService> userService = [[JCMediatorProtocol sharedInstance] provideUserService];
    UIViewController *loginViewController = [userService loginViewController];
    
    [self presentViewController:loginViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

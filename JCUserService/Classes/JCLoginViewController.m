//
//  JCLoginViewController.m
//  JCUserService
//
//  Created by Jam Jia on 12/30/19.
//

#import "JCMediatorProtocl+ProductService.h"
#import "JCLoginViewController.h"

@interface JCLoginViewController ()

@end

@implementation JCLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onDissmiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onClickProduct:(id)sender {
    id<ProductService> productService = [[JCMediatorProtocol sharedInstance] provideProductService];
    
    UIViewController *viewController = [productService viewControllerForPorduct:@"水果" withDetail:@"非常好吃的热带水果快来买呀，过了就没了" extraParams:@{@"banana":@"15", @"apple":@"30", @"discount":@"0.75"}];
    
    [self presentViewController:viewController animated:YES completion:nil];
}

@end

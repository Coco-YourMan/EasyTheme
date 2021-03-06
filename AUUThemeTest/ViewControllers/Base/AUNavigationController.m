//
//  AUNavigationController.m
//  ThemeTest
//
//  Created by JyHu on 2017/2/24.
//  Copyright © 2017年 JyHu. All rights reserved.
//

#import "AUNavigationController.h"
#import "UIImage+AUUHelper.h"

@interface AUNavigationController ()

@end

@implementation AUNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColorIdentifier = AUUColorBackground;
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    self.navigationBar.titleColorIdentifier = AUUColorTextTitle;
    [self.navigationBar setBackgroundImageIdentifier:AUUImageBackgroundNavbar forBarMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

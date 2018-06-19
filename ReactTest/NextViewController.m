//
//  NextViewController.m
//  ReactTest
//
//  Created by 徐建峰 on 2018/6/19.
//  Copyright © 2018年 Jianfeng Xu. All rights reserved.
//

#import "NextViewController.h"
#import <React/RCTRootView.h>

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = UIColor.redColor;

    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNHighScores"
                         initialProperties :
     @{
       @"NameDict" : @[
               @{
                   @"name" : @"海草海草",
                   @"value": @"随波飘摇"
                   },
               @{
                   @"name" : @"我站在",
                   @"value": @"凛冽风中"
                   }
               ]
       }
                          launchOptions    : nil];
    self.view = rootView;

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

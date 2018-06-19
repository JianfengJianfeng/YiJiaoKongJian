//
//  ViewController.m
//  ReactTest
//
//  Created by 徐建峰 on 2018/6/19.
//  Copyright © 2018年 Jianfeng Xu. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
                           
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonAction{
    
    NextViewController * vc = [[NextViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}



@end

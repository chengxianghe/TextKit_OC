//
//  ViewController.m
//  TextKit_OC
//
//  Created by chengxianghe on 15/9/2.
//  Copyright (c) 2015年 CXH. All rights reserved.
//

#import "ViewController.h"
#import "TextKit_OC-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SwiftTest *test = [[SwiftTest alloc] init];
    [test testFunc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

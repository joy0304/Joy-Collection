//
//  ViewController.m
//  MachExceptionDemo
//
//  Created by Joy on 2016/11/14.
//  Copyright © 2016年 Joy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"start crash");
    //    [self performSelector:@selector(badAccess) withObject:nil afterDelay:1];
    [self performSelector:@selector(mathMistake) withObject:nil afterDelay:1];
}

- (void)badAccess {
    void (*nfunction)() = NULL;
    nfunction();
}

- (void)mathMistake {
    int a = 24;
    printf("%d", a/0);
}

@end

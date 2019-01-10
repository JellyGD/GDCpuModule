//
//  GDCpuViewController.m
//  GDCpuModule
//
//  Created by jelly130520@gmail.com on 01/10/2019.
//  Copyright (c) 2019 jelly130520@gmail.com. All rights reserved.
//

#import "GDCpuViewController.h"
#import <GDCpuModule/CTMediator+CPU.h>

@interface GDCpuViewController ()

@end

@implementation GDCpuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}
- (IBAction)action:(id)sender {
    
    UIViewController *viewController = [[CTMediator sharedInstance] CPU_Viewcontroller];
    if (viewController) {
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  Target_CPU.m
//  CTMediator
//
//  Created by jelly on 2019/1/10.
//

#import "Target_CPU.h"
#import "GDCPUViewController.h"
@implementation Target_CPU

- (UIViewController *)Action_viewcontroller:(NSDictionary *)params{
    GDCPUViewController *viewcontroller = [[GDCPUViewController alloc] init];
    return viewcontroller;
}

@end

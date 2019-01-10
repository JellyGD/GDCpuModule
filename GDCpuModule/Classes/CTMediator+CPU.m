//
//  CTMediator+CPU.m
//  GDCpuModule
//
//  Created by jelly on 2019/1/10.
//

#import "CTMediator+CPU.h"

@implementation CTMediator (CPU)


- (UIViewController *)CPU_Viewcontroller{
    
   return [self performTarget:@"CPU" action:@"viewcontroller" params:nil shouldCacheTarget:NO];
}


@end

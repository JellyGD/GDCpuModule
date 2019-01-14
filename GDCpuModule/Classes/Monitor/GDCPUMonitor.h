//
//  GDCPUMonitor.h
//  GDCpuModule
//
//  Created by jelly on 2019/1/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GDCPUMonitor : NSObject


/**
 单例 创建CPU的监控 每隔一秒打印一次CPU的使用情况
 @return CPU 监听对象
 */
+ (instancetype)shareInstance;


- (void)starCPUMonitor:(void (^)(CGFloat cpuUsage))block;


- (void)stopCPUMonitor;

@end

NS_ASSUME_NONNULL_END

//
//  GDCPUViewController.m
//  CTMediator
//
//  Created by jelly on 2019/1/10.
//

#import "GDCPUViewController.h"
#import "GDCPUMonitor.h"

@interface GDCPUViewController ()

@property (nonatomic, strong) UIButton *oldButton;


@property (nonatomic, strong) UIButton *newButton;

@end

@implementation GDCPUViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"创建多对象 对CPU的影响";
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    self.oldButton.frame = CGRectMake(0, 200, width, 100);
    self.newButton.frame = CGRectMake(0, 400, width, 100);
    [self.view addSubview:self.oldButton];
    [self.view addSubview:self.newButton];
    [[GDCPUMonitor shareInstance] starCPUMonitor:^(CGFloat cpuUsage) {
        
    }];
}

- (void)dealloc{
    [[GDCPUMonitor shareInstance] stopCPUMonitor];
}

- (void)oldMethod{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0 ; i < 10000; i ++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        view.backgroundColor = [UIColor redColor];
        [self.view addSubview:view];
        [array addObject:view];
    }
    [array makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

- (void)newMethod{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0 ; i < 10000; i ++) {
        CALayer *layer = [[CALayer alloc] init];
        layer.frame = CGRectMake(100, 100, 100, 100);
        layer.backgroundColor = [UIColor redColor].CGColor;
        [self.view.layer addSublayer:layer];
        [array addObject:layer];
    }
    [array makeObjectsPerformSelector:@selector(removeFromSuperlayer)];
}

#pragma mark - Getter && Setter

- (UIButton *)oldButton {
    if (!_oldButton) {
        _oldButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_oldButton addTarget:self action:@selector(oldMethod) forControlEvents:UIControlEventTouchUpInside];
        [_oldButton setTitle:@"创建多对象" forState:UIControlStateNormal];
        [_oldButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _oldButton;
}

- (UIButton *)newButton {
    if (!_newButton) {
        _newButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_newButton addTarget:self action:@selector(newMethod) forControlEvents:UIControlEventTouchUpInside];
        [_newButton setTitle:@"轻量级创建" forState:UIControlStateNormal];
        [_newButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _newButton;
}




@end

//
//  ViewController.m
//  Animation
//
//  Created by 李闯 on 2020/4/10.
//  Copyright © 2020 李闯. All rights reserved.
//

#import "ViewController.h"
#import "BasicAnimationViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)BasicAnimation:(id)sender {
    BasicAnimationViewController *viewController = [[BasicAnimationViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end

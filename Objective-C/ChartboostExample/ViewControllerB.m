//
//  ViewControllerB.m
//  ChartboostExample
//
//  Created by zhou on 2022/12/20.
//  Copyright © 2022 chartboost. All rights reserved.
//

#import "ViewControllerB.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB

- (void)viewDidLoad {
  [super viewDidLoad];

  self.view.backgroundColor = [UIColor orangeColor];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];

  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"char_main"];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:NULL];
  });
}

@end

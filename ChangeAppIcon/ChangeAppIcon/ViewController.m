//
//  ViewController.m
//  ChangeAppIcon
//
//  Created by LC on 2017/7/4.
//  Copyright © 2017年 LC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (IBAction)changeFirst:(id)sender {
    
    [self changeIconWithString:@"FristIcon"];
}


- (IBAction)changeSecond:(id)sender {

    [self changeIconWithString:@"SecondIcon"];
}


- (IBAction)changeThird:(id)sender {

    [self changeIconWithString:@"ThirdIcon"];
}


- (void)changeIconWithString:(NSString *)string
{
    
    //当前设备的系统版本。这里的所有api都是10.3才能使用的
    if ([UIApplication sharedApplication].supportsAlternateIcons) {
        NSLog(@"可以更换APPicon");
    }else{
        NSLog(@"不可以更换APPicon");
        return;
    }
    
    NSString *iconName = [[UIApplication sharedApplication] alternateIconName];
    
    [[UIApplication sharedApplication] setAlternateIconName:string completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"error == %@",error);
        }
        NSLog(@"iconName == %@",iconName);
    }];
}

@end

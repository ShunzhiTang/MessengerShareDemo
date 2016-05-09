//
//  ViewController.m
//  MessengerShareDemo
//
//  Created by tang on 16/5/9.
//  Copyright © 2016年 shunzhitang. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

//#import <FBSDKLoginKit/FBSDKLoginKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark: messenger  Share

- (IBAction)clickMessengerSare:(UIButton *)sender {
    
    UIImage *image = [UIImage imageNamed:@"mobobox"];
    
    [FBSDKMessengerSharer shareImage:image withOptions:nil];
    
}



@end

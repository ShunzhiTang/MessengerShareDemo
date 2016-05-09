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

// helper enum i made to define the state
enum MessengerShareMode { MessengerShareModeSend,
    MessengerShareModeComposer,
    MessengerShareModeReply};

// shareMode holds state indicating which flow the user is in.
// Return the corresponding FBSDKMessengerContext based on that state.
enum MessengerShareMode shareMode;

@interface ViewController ()
@property (nonatomic ,strong) FBSDKMessengerURLHandlerOpenFromComposerContext *composerContext ;

@property (nonatomic ,strong) FBSDKMessengerURLHandlerReplyContext *replyContext;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    UIButton *button = [FBSDKMessengerShareButton rectangularButtonWithStyle:FBSDKMessengerShareButtonStyleBlue];
//    
//    [button addTarget:self action:@selector(shareButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    
//    [self.view addSubview:button];

}


#pragma mark: messenger  Share

- (IBAction)clickMessengerSare:(UIButton *)sender {
    
    UIImage *image = [UIImage imageNamed:@"mobobox"];
    
    
    [FBSDKMessengerSharer shareImage:image withOptions:nil];
    
    
//
//    NSString *metadata = @"{ \"image\" : \"pedro\" }";
//    
//    UIImage *image = [UIImage imageNamed:@"mobobox"];
//    
//    // getContextForShareMode is a helper method
//    
//    FBSDKMessengerShareOptions *options = [[FBSDKMessengerShareOptions alloc] init];
//    
//    options.metadata = metadata;
//    
//    options.contextOverride = [self getContextForShareMode];
//    
//    [FBSDKMessengerSharer shareImage:image withOptions:options];
}


- (void)shareButtonPressed:(UIButton *)btn{

    NSLocalizedString(@"Send", @"Button label for sending a message");
    
    NSLog(@"----- ++ ");
}

//
//- (FBSDKMessengerContext *) getContextForShareMode
//{
//    // shareMode holds state indicating which flow the user is in.
//    // Return the corresponding FBSDKMessengerContext based on that state.
//    
//    if (shareMode == MessengerShareModeSend) {
//        // Force a send flow by returning a broadcast context.
//        return [[FBSDKMessengerBroadcastContext alloc] init];
//        
//        
//    } else if (shareMode == MessengerShareModeComposer) {
//        // Force the composer flow by returning the composer context.
//        return _composerContext;
//        
//    } else if (shareMode == MessengerShareModeReply) {
//        // Force the reply flow by returning the reply context.
//        return _replyContext;
//    }
//    
//    
//    return nil;
//}

@end

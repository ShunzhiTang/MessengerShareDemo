//
//  AppDelegate.m
//  MessengerShareDemo
//
//  Created by tang on 16/5/9.
//  Copyright © 2016年 shunzhitang. All rights reserved.
//

#import "AppDelegate.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>

@interface AppDelegate ()
//<FBSDKMessengerURLHandlerDelegate>

//@property (nonatomic ,strong) FBSDKMessengerURLHandler *messengerUrlHandler;
//
//@property (nonatomic ,strong) FBSDKMessengerURLHandlerOpenFromComposerContext *composerContext ;
//
//@property (nonatomic ,strong) FBSDKMessengerURLHandlerReplyContext *replyContext;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [[FBSDKApplicationDelegate sharedInstance] application:application
                             didFinishLaunchingWithOptions:launchOptions];
    
//    _messengerUrlHandler = [[FBSDKMessengerURLHandler alloc] init];
//    _messengerUrlHandler.delegate = self;
    
    // 动态的 添加 加入 3D touch  功能
    
    
    // 栏目1
    
//    UIApplicationShortcutIcon  *icon1 =  [UIApplicationShortcutIcon  iconWithType:UIApplicationShortcutIconTypeHome];
    
    UIApplicationShortcutIcon  *icon1 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"touch_cart_icon"];
    
    UIApplicationShortcutItem  *item1 = [[UIApplicationShortcutItem  alloc] initWithType:@"item1"localizedTitle:@"购物车" localizedSubtitle:nil icon:icon1  userInfo:nil];
    
    // 栏目2
    
    
    UIApplicationShortcutIcon  *icon2 =  [UIApplicationShortcutIcon  iconWithType:UIApplicationShortcutIconTypeSearch];
    
    UIApplicationShortcutItem  *item2 = [[UIApplicationShortcutItem  alloc] initWithType:@"item2"localizedTitle:@"搜索" localizedSubtitle:@"子标题" icon:icon2  userInfo:nil];
    
    UIApplicationShortcutIcon  *icon3 =  [UIApplicationShortcutIcon  iconWithType:UIApplicationShortcutIconTypeShare];
    
    UIApplicationShortcutItem  *item3 = [[UIApplicationShortcutItem  alloc] initWithType:@"item3"localizedTitle:@"分享" localizedSubtitle:nil icon:icon3  userInfo:nil];
    
    UIApplicationShortcutIcon  *icon4 =  [UIApplicationShortcutIcon  iconWithType:UIApplicationShortcutIconTypeContact];
    
    UIApplicationShortcutItem  *item4 = [[UIApplicationShortcutItem  alloc] initWithType:@"item4"localizedTitle:@"联系人" localizedSubtitle:nil icon:icon4  userInfo:nil];
    
    
    application.shortcutItems = @[item1 , item2 ,item3 , item4];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    
    [FBSDKAppEvents activateApp];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
//
//- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
//    return [[FBSDKApplicationDelegate sharedInstance] application:application
//                                                          openURL:url
//                                                sourceApplication:sourceApplication
//                                                       annotation:annotation
//            ];
//}
//
//#pragma mark： messengerUrlHandler
//
//
//- (void)messengerURLHandler:(FBSDKMessengerURLHandler *)messengerURLHandler
//didHandleOpenFromComposerWithContext:(FBSDKMessengerURLHandlerOpenFromComposerContext *)context;
//{
//    _composerContext = context;
//}
//
///*
// * When people enter your app through the "Reply" button on content
// * this delegate function will be called.
// */
//- (void)messengerURLHandler:(FBSDKMessengerURLHandler *)messengerURLHandler
//  didHandleReplyWithContext:(FBSDKMessengerURLHandlerReplyContext *)context;
//{
//    _replyContext = context;
//}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    
    NSString *itemType = shortcutItem.type;
    
    if([@"item1" isEqualToString:itemType]){
     
        NSLog(@"第一个");
        
    }
    else if([@"item2" isEqualToString:itemType]){
        
        NSLog(@"第er个");
    }
}



@end

//
//  AppDelegate.m
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import "AppDelegate.h"
#import "Fish.h"
#import "Kangaroo.h"
#import "Leopard.h"
#import "Jumper.h"
#import "Swimmer.h"
#import "Runner.h"
#import "Jumpers.h"
#import "Swimmers.h"
#import "LazyBoy.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Fish * Nemo = [[Fish alloc]init];
    Kangaroo * Jack = [[Kangaroo alloc]init];
    Leopard * Kitty = [[Leopard alloc]init];
    LazyBoy * Ivan = [[LazyBoy alloc] init];
    Jumper * Vova = [[Jumper alloc] init];
    Swimmer * Vlad = [[Swimmer alloc]init];
    Runner * Sasha = [[Runner alloc] init];

    
    Nemo.name = @"Nemo";
    Nemo.speed = 5;
    
    Jack.name = @"Jack";
    Jack.speed = 30;
    
    Kitty.name = @"Kitty";
    Kitty.speed = 50;

    Vova.name = @"Vova";
    Vova.speed = 10;
    
    Vlad.name = @"Vlad";
    Vlad.speed = 15;
    
    Sasha.name = @"Sasha";
    Sasha.speed = 20;
    
    Ivan.name= @"Ivan";
    Ivan.speed = 0;

    NSArray * allInOneArray = [NSArray arrayWithObjects:Nemo, Jack, Kitty, Vova, Vlad, Sasha, nil];
    for (id all in allInOneArray) {
        if ([all conformsToProtocol:@protocol(Jumpers) ]) {
            id <Jumpers> jumpers = all;
            NSLog(@"My name is %@, and my speed is %d", [jumpers name], [jumpers speed]);
            if ([jumpers start]) {
                [jumpers jump];
                while (![jumpers didYouFinish]) {
                    NSLog(@"ohhhh... again");
                    [jumpers jump];
                };
                NSLog(@"Now when we finish we can say:");
                if ([jumpers respondsToSelector:@selector(speak)])
                {
                    [jumpers speak];
                }
            }
        }
        else if ([all conformsToProtocol:@protocol(Swimmers)])
        {
            id <Swimmers> swimmers = all;
            NSLog(@"My name is %@, and my speed is %d", [swimmers name], [swimmers speed]);
            if ([swimmers start]) {
                [swimmers swim];
                while (![swimmers didYouFinish]) {
                    NSLog(@"ohhhh... again");
                    [swimmers swim];
                };
                NSLog(@"Now when we finish we can say:");
                if ([swimmers respondsToSelector:@selector(speak)])
                {
                    [swimmers speak];
                }
            }
        }
        else if ([all conformsToProtocol:@protocol(Runners)])
        {
            id <Runners> runners = all;
            NSLog(@"My name is %@, and my speed is %d", [runners name], [runners speed]);
            if ([runners start]) {
                [runners run];
                while (![runners didYouFinish]) {
                    NSLog(@"ohhhh... again");
                    [runners run];
                };
                NSLog(@"Now when we finish we can say:");
                if ([runners respondsToSelector:@selector(speak)])
                {
                    [runners speak];
                }
            }
        }
        else
        {
            NSLog(@"My name is %@ and i'm a LOAFER!!!! Because i'm doing nothing", [all name]);
        }
    }


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
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  Jumper.m
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import "Jumper.h"

@implementation Jumper


- (void) jump
{
    NSLog(@"%@ is jumping!", self.name);
    
}
- (BOOL) start
{
    BOOL ok = arc4random()%2;
    NSLog(@"is %@ started? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}
- (BOOL) didYouFinish
{
    BOOL ok = arc4random()%2;
    NSLog(@"is %@ road finished? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}
- (void) speak
{
    NSLog(@"I like to move, i'm not lazy!");
}

@end

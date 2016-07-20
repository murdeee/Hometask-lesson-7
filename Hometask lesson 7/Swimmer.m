//
//  Swimmer.m
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import "Swimmer.h"

@implementation Swimmer


#pragma mark - Protocol

- (BOOL) start
{
    BOOL ok = arc4random()%2;
    NSLog(@"is %@ started? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}
- (void) swim
{
    NSLog(@"%@ is swimming!", self.name);
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

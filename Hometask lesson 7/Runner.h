//
//  Runner.h
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Runner : NSObject


@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger* speed;


- (BOOL) start;
- (void) run;
- (BOOL) didYouFinish;
- (void) speak;

@end

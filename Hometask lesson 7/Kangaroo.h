//
//  Kangaroo.h
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jumpers.h"

@interface Kangaroo : NSObject <Jumpers>

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger* speed;



- (void) jump;
- (BOOL) start;
- (BOOL) didYouFinish;
- (void) speak;



@end

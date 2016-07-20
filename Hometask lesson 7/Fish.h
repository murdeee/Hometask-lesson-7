//
//  Fish.h
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Swimmers.h"
@interface Fish : NSObject <Swimmers>


@property (assign, nonatomic) NSInteger* speed;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* place;

- (BOOL) start;
- (void) swim;
- (BOOL) didYouFinish;
- (void) speak;

@end

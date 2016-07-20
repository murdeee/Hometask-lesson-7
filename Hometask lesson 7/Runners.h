//
//  Runners.h
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Runners <NSObject>



@required

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger* speed;


- (BOOL) start;
- (void) run;

@optional

- (void) jump;
- (BOOL) didYouFinish;
- (void) swim;
- (void) speak;

@end

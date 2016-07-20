//
//  Swimmers.h
//  Hometask lesson 7
//
//  Created by Andrew Denisov on 13.07.16.
//  Copyright © 2016 Andrew Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Swimmers <NSObject>


@required

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger* speed;


- (BOOL) start;
- (void) swim;

@optional
- (void) run;
- (BOOL) didYouFinish;
- (void) jump;
- (void) speak;

@end
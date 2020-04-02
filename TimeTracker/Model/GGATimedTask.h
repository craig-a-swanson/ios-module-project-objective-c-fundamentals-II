//
//  GGATimedTask.h
//  TimeTracker
//
//  Created by Craig Swanson on 4/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GGATimedTask : NSObject

@property NSString *clientName;
@property NSString *workSummary;
@property double rate;
@property double hours;
@property (readonly) double totalCharged;

- (instancetype)initWithString:(NSString *)clientName
                   workSummary:(NSString *)workSummary
                          rate:(double)rate
                         hours:(double)hours;

@end

NS_ASSUME_NONNULL_END

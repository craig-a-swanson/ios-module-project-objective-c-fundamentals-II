//
//  GGATimedTask.m
//  TimeTracker
//
//  Created by Craig Swanson on 4/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "GGATimedTask.h"

@implementation GGATimedTask

- (instancetype)initWithString:(NSString *)clientName
                   workSummary:(NSString *)workSummary
                          rate:(double)rate
                         hours:(double)hours {
    self = [super init];
    if (self) {
        _clientName = clientName;
        _workSummary = workSummary;
        _rate = rate;
        _hours = hours;
    }
    return self;
}

- (double)totalCharged {
    return self.hours * self.rate;
}

@end

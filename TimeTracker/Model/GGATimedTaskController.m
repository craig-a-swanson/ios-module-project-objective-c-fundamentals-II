//
//  GGATimedTaskController.m
//  TimeTracker
//
//  Created by Craig Swanson on 4/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "GGATimedTaskController.h"
#import "GGATimedTask.h"

@interface GGATimedTaskController ()

// Private property

// Private methods

@end

@implementation GGATimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)clientName
                    summary:(NSString *)workSummary
                    Payrate:(double)rate
                hoursWorked:(double)hours {
    
    GGATimedTask *task = [[GGATimedTask alloc] initWithString:clientName workSummary:workSummary rate:rate hours:hours];
    
    [self.timedTasks addObject:task];
}

@end

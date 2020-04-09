//
//  GGATimedTaskController.h
//  TimeTracker
//
//  Created by Craig Swanson on 4/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GGATimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface GGATimedTaskController : NSObject

@property NSMutableArray<GGATimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)clientName
                    summary:(NSString *)workSummary
                    Payrate:(double)rate
                hoursWorked:(double)hours;

@end

NS_ASSUME_NONNULL_END

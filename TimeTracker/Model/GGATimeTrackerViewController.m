//
//  GGATimeTrackerViewController.m
//  TimeTracker
//
//  Created by Craig Swanson on 4/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "GGATimeTrackerViewController.h"
#import "GGATimedTask.h"
#import "GGATimedTaskController.h"

@interface GGATimeTrackerViewController ()

// MARK: - Properties
@property (nonatomic) GGATimedTaskController *timedTaskController;

// MARK: - Outlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *workSummaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation GGATimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timedTaskController = [[GGATimedTaskController alloc]  init];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

// MARK: - Actions
- (IBAction)logTime:(UIButton *)sender {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TitleCell" forIndexPath:indexPath];
    
    
    
    return cell;
}

// MARK: - UITableViewDelegate
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//}

@end

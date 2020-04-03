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
    NSString *clientName = _clientNameTextField.text;
    NSString *workSummary = _workSummaryTextField.text;
    double hourlyRate = [_hourlyRateTextField.text doubleValue];
    double hoursWorked = [_hoursWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTimedTaskWith:clientName
                                          summary:workSummary
                                          Payrate:hourlyRate
                                      hoursWorked:hoursWorked];
    
    [self.tableView reloadData];
    [self updateViews];
}

// MARK: - Methods
- (void)updateViews {
    _clientNameTextField.text = @"";
    _workSummaryTextField.text = @"";
    _hourlyRateTextField.text = @"";
    _hoursWorkedTextField.text = @"";
}

// MARK: - TableView Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TitleCell" forIndexPath:indexPath];
    
    GGATimedTask *task = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%0.2f", task.totalCharged];
    
    return cell;
}

// MARK: - UITableViewDelegate
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//}

@end

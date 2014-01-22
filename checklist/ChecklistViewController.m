//
//  ChecklistViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "ChecklistViewController.h"
#import "Checklist.h"
#import "ChecklistItem.h"

@interface ChecklistViewController ()
@property (strong, nonatomic) Checklist *checklist;
@end

@implementation ChecklistViewController

- (id)initWithChecklist:(Checklist *)checklist
{
  if (self = [super init]) {
    self.checklist = checklist;
    
    [self setTitle:checklist.name];
    
    // make the left navigation button say cancel
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(backButtonPressed)];
    [backButton setTintColor:[UIColor blackColor]];
    [[self navigationItem] setLeftBarButtonItem:backButton];
    
    // make the right navigation button a plus sign
    UIBarButtonItem *plusButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addChecklistItemButtonPressed)];
    [plusButton setTintColor:[UIColor blackColor]];
    [[self navigationItem] setRightBarButtonItem:plusButton];
  }
  return self;
}

- (void)loadView
{
  UITableView *tableView = [[UITableView alloc] init];
  tableView.dataSource = self;
  tableView.delegate = self;
  self.view = tableView;
}

- (void)backButtonPressed
{
  [[self navigationController] popViewControllerAnimated:YES];
}

- (void)addChecklistItemButtonPressed
{

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [[[self checklist] checklistItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *cellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
  }
  
  NSInteger row = [indexPath row];
  ChecklistItem *item = [[[[self checklist] checklistItems] allObjects] objectAtIndex:row];
  [[cell textLabel] setText:[item name]];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger row = [indexPath row];
  ChecklistItem *item = [[[[self checklist] checklistItems] allObjects] objectAtIndex:row];
}


@end

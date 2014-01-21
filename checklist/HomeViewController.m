//
//  HomeViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "AppDelegate.h"
#import "ChecklistViewController.h"
#import "CreateViewController.h"
#import "HomeViewController.h"

@interface HomeViewController ()

@property (strong, nonatomic) NSArray *checklists;

@end

@implementation HomeViewController

- (id)initWithStyle:(UITableViewStyle)style
{
  if (self = [super initWithStyle:style]) {
    [self setTitle:@"Checklists"];
    
    UIBarButtonItem *plusButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addChecklistButtonPressed)];
    [plusButton setTintColor:[UIColor blackColor]];
    [[self navigationItem] setRightBarButtonItem:plusButton];
    [self updateChecklists];
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

- (void)addChecklistButtonPressed
{
  CreateViewController *createViewController = [[CreateViewController alloc] init];
  [[self navigationController] pushViewController:createViewController animated:NO];
}

- (void)onChecklistCreated:(Checklist *)checklist
{
  ChecklistViewController *checklistViewController = [[ChecklistViewController alloc] initWithChecklist:checklist];
  [[self navigationController] popViewControllerAnimated:NO];
  [[self navigationController] pushViewController:checklistViewController animated:NO];
  [self updateChecklists];
}

- (void)updateChecklists
{
  AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
  NSManagedObjectContext *moc = [appDelegate managedObjectContext];
  
  NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Checklist" inManagedObjectContext:moc];
  NSFetchRequest *request = [[NSFetchRequest alloc] init];
  [request setEntity:entityDescription];
  
  NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
  [request setSortDescriptors:@[sortDescriptor]];
  
  NSError *error;
  NSArray *array = [moc executeFetchRequest:request error:&error];
  if (array == nil)
  {
    NSLog(@"Couldn't fetch checklists for some reason...");
    return;
  }
  
  [self setChecklists:array];
  [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [[self checklists] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *cellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
  }
  
  NSInteger row = [indexPath row];
  Checklist *checklist = [[self checklists] objectAtIndex:row];
  [[cell textLabel] setText:[checklist name]];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger row = [indexPath row];
  Checklist *checklist = [[self checklists] objectAtIndex:row];
  ChecklistViewController *checklistViewController = [[ChecklistViewController alloc] initWithChecklist:checklist];
  [[self navigationController] pushViewController:checklistViewController animated:NO];
}

@end

//
//  HomeViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "ChecklistViewController.h"
#import "CreateViewController.h"
#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)init
{
  if (self = [super init]) {
    [self setTitle:@"Checklists"];
    
    UIBarButtonItem *plusButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addChecklistButtonPressed)];
    [plusButton setTintColor:[UIColor blackColor]];
    [[self navigationItem] setRightBarButtonItem:plusButton];
  }
  return self;
}

- (void)loadView
{
  self.view = [[UITableView alloc] init];
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
}

@end

//
//  CreateViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "Checklist.h"
#import "CreateViewController.h"
#import "CreateView.h"
#import "HomeViewController.h"

@interface CreateViewController ()

@end

@implementation CreateViewController

- (id)init
{
  if (self = [super init]) {
    [self setTitle:@"New Checklist"];
    
    // make the left navigation button say cancel
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    [backButton setTintColor:[UIColor blackColor]];
    [[self navigationItem] setLeftBarButtonItem:backButton];
  }
  return self;
}

- (void)loadView
{
  self.view = [[CreateView alloc] initWithViewController:self];
}

- (void)cancel
{
  [[self navigationController] popViewControllerAnimated:YES];
}

- (void)createButtonTapped
{
  CreateView *createView = (CreateView *)self.view;
  // trim whitespace out
  NSString *name = [[[createView nameField] text] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  Checklist *checklist = [Checklist checklistWithName:name];
  [[self homeViewController] onChecklistCreated:checklist];
}

- (HomeViewController *)homeViewController
{
  HomeViewController *homeViewController = (HomeViewController *)[[[self navigationController] viewControllers] objectAtIndex:0];
  NSAssert([homeViewController isKindOfClass:[HomeViewController class]], @"expected a HomeViewController");
  return homeViewController;
}

@end

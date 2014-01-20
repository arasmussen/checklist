//
//  CreateViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "CreateViewController.h"
#import "CreateView.h"

@interface CreateViewController ()

@end

@implementation CreateViewController

- (id)init
{
  if (self = [super init]) {
    [self setTitle:@"New Checklist"];
  }
  return self;
}

- (void)loadView
{
  self.view = [[CreateView alloc] initWithViewController:self];
}

@end

//
//  LoadViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "LoadViewController.h"
#import "LoadView.h"

@implementation LoadViewController

- (id)init
{
  if (self = [super init]) {
    [self setTitle:@"ohai"];
  }
  return self;
}

- (void)loadView
{
  self.view = [[LoadView alloc] init];
}

@end

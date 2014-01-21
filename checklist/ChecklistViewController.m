//
//  ChecklistViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "ChecklistViewController.h"

@interface ChecklistViewController ()
@property (strong, nonatomic) Checklist *checklist;
@end

@implementation ChecklistViewController

- (id)initWithChecklist:(Checklist *)checklist
{
  if (self = [super init]) {
    self.checklist = checklist;
  }
  return self;
}

@end

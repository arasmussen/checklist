//
//  ChecklistViewController.h
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Checklist.h"

@interface ChecklistViewController : UITableViewController

- (id)initWithChecklist:(Checklist *)checklist;

@end

//
//  CreateView.h
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateView : UIView

- (id)initWithViewController:(CreateViewController *)viewController;

@property (strong, nonatomic) UITextField *nameField;

@end

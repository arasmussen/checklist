//
//  CreateView.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "CreateViewController.h"
#import "CreateView.h"

@interface CreateView ()
@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UIButton *createButton;
@end

@implementation CreateView

- (id)initWithViewController:(CreateViewController *)createViewController
{
  if (self = [super init]) {
    [self setBackgroundColor:[UIColor whiteColor]];
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, screenWidth - 20, 30)];
    [self.nameLabel setTextColor:[UIColor blackColor]];
    [self.nameLabel setFont:[UIFont fontWithName:@"Verdana" size:14.0f]];
    [self.nameLabel setText:@"What shall we name your list?"];
    [self addSubview:self.nameLabel];
    
    self.nameField = [[UITextField alloc] initWithFrame:CGRectMake(10, 40, screenWidth - 20, 30)];
    [self.nameField setTextColor:[UIColor blackColor]];
    [self.nameField setFont:[UIFont fontWithName:@"Verdana" size:20.0f]];
    [self.nameField setText:@"My Checklist"];
    [self.nameField setDelegate:createViewController];
    [self.nameField.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.nameField.layer setBorderWidth:1.0f];
    [self.nameField setClearsOnBeginEditing:YES];
    [self addSubview:self.nameField];
    
    self.createButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.createButton setFrame:CGRectMake(0, 80, screenWidth, 40)];
    [self.createButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.createButton setTitle:@"Create!" forState:UIControlStateNormal];
    [self.createButton.titleLabel setFont:[UIFont fontWithName:@"Verdana" size: 20.0f]];
    [self.createButton.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.createButton.layer setBorderWidth:1.0f];
    [self.createButton addTarget:createViewController action:@selector(createButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.createButton];
  }
  return self;
}

@end

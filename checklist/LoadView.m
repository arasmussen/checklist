//
//  LoadView.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "LoadView.h"

@interface LoadView ()
@property (strong, nonatomic) UILabel *titleLabel;
@end

@implementation LoadView

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self setBackgroundColor:[UIColor whiteColor]];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, screenWidth, 30)];
    [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.titleLabel setTextColor:[UIColor blackColor]];
    [self.titleLabel setBackgroundColor:[UIColor clearColor]];
    [self.titleLabel setFont:[UIFont fontWithName:@"Verdana" size:20.0f]];
    [self.titleLabel setText:@"This is a checklist app!"];
    [self addSubview:self.titleLabel];
  }
  return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
}
*/

@end

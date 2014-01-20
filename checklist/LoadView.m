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
      self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 300, 20)];
      [self.titleLabel setTextColor:[UIColor whiteColor]];
      [self.titleLabel setBackgroundColor:[UIColor clearColor]];
      [self.titleLabel setFont:[UIFont fontWithName:@"Verdana" size:20.0f]];
      [self.titleLabel setText:@"Hello world!"];
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

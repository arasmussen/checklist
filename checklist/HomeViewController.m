//
//  HomeViewController.m
//  checklist
//
//  Created by Andrew Rasmussen on 1/20/14.
//  Copyright (c) 2014 Andrew & Sarah. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)init
{
  if (self = [super init]) {
    [self setTitle:@"home"];
  }
  return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
  self.view = [[HomeView alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
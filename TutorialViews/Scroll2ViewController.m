//
//  Scroll2ViewController.m
//  TutorialViews
//
//  Created by Daigo Matsuoka on 29/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import "Scroll2ViewController.h"

@interface Scroll2ViewController ()

@end

@implementation Scroll2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [scroll setContentSize:imageView.frame.size];
    [scroll setMinimumZoomScale:1];
    [scroll setMaximumZoomScale:5];
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return imageView;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

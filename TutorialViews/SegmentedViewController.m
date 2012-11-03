//
//  SegmentedViewController.m
//  TutorialViews
//
//  Created by Daigo Matsuoka on 31/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import "SegmentedViewController.h"

@interface SegmentedViewController ()

@end

@implementation SegmentedViewController

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
    
    UIImage * foto1 = [UIImage imageNamed:@"foto1.jpg"];
    UIImage * foto2 = [UIImage imageNamed:@"foto2.jpg"];
    UIImage * foto3 = [UIImage imageNamed:@"foto3.jpg"];
    
    fotos = [[NSArray alloc] initWithObjects:foto1, foto2, foto3, nil];
    
    [imagem setImage:foto1];
}

-(IBAction)mudaFoto:(id)sender
{
    UISegmentedControl * segment = (UISegmentedControl *)sender;
    [imagem setImage:[fotos objectAtIndex:[segment selectedSegmentIndex]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end

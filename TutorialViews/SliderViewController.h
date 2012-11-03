//
//  SliderViewController.h
//  TutorialViews
//
//  Created by Daigo Matsuoka on 31/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderViewController : UIViewController
{
    IBOutlet UISlider * slider;
    IBOutlet UIProgressView * progress;
}

-(IBAction)detectaMudanca:(id)sender;

@end

//
//  SwitchViewController.h
//  TutorialViews
//
//  Created by Daigo Matsuoka on 31/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchViewController : UIViewController
{
    IBOutlet UIActivityIndicatorView * activeIndicator;
}

-(IBAction)turnOnOff:(id)sender;

@end

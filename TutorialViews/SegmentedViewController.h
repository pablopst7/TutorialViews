//
//  SegmentedViewController.h
//  TutorialViews
//
//  Created by Daigo Matsuoka on 31/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentedViewController : UIViewController
{
    NSArray * fotos;
    IBOutlet UIImageView * imagem;
}

-(IBAction)mudaFoto:(id)sender;

@end

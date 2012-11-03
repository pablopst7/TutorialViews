//
//  PrimeiraViewController.h
//  TutorialViews
//
//  Created by Daigo Matsuoka on 26/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrimeiraViewController : UIViewController
{
    IBOutlet UIView * viewContainer;
    
    IBOutlet UITextField * txtNome;
    IBOutlet UITextField * txtIdade;
    
    UILabel * lblResultado;
}

-(IBAction)verificarMaioridade:(id)sender;

@end

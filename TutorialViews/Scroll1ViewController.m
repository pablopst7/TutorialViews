//
//  Scroll1ViewController.m
//  TutorialViews
//
//  Created by Daigo Matsuoka on 28/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import "Scroll1ViewController.h"

@interface Scroll1ViewController ()

@end

@implementation Scroll1ViewController

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
    
    NSNotificationCenter *notifications = [NSNotificationCenter defaultCenter];
    [notifications addObserver:self selector:@selector(tecladoAberto:) name:UIKeyboardDidShowNotification object:nil];
    [notifications addObserver:self selector:@selector(tecladoFechado:) name:UIKeyboardDidHideNotification object:nil];
}

-(void)tecladoAberto:(NSNotification *)notification
{
    NSDictionary* info = [notification userInfo];
    CGSize tamanhoTeclado = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, tamanhoTeclado.height, 0.0);
    scroll.contentInset = contentInsets;
    scroll.scrollIndicatorInsets = contentInsets;

    // Tamanho da view inteira
    CGRect areaMostra = self.view.frame;
    // Somente a área a mostra (área da view - área do teclado)
    areaMostra.size.height -= tamanhoTeclado.height;
    
    if (!CGRectContainsPoint(areaMostra, campoAtivo.frame.origin) )
    {
        CGPoint scrollPoint = CGPointMake(0.0, campoAtivo.frame.origin.y-tamanhoTeclado.height);
        [scroll setContentOffset:scrollPoint animated:YES];
    }
 
}

-(void)tecladoFechado:(NSNotification *)notification
{
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    scroll.contentInset = contentInsets;
    scroll.scrollIndicatorInsets = contentInsets;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    campoAtivo = textField;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    campoAtivo = nil;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end

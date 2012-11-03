//
//  PrimeiraViewController.m
//  TutorialViews
//
//  Created by Daigo Matsuoka on 26/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import "PrimeiraViewController.h"
#import "Contatos.h"

@interface PrimeiraViewController ()

@end

@implementation PrimeiraViewController

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

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    lblResultado = [[UILabel alloc] initWithFrame:CGRectMake(viewContainer.frame.origin.x, viewContainer.frame.origin.y + viewContainer.frame.size.height + 10, viewContainer.frame.size.width, 40)];
    [self.view addSubview:lblResultado];
}

-(void)tecladoAberto:(NSNotification *)notification
{
    NSDictionary* info = [notification userInfo];
    CGSize tamanhoTeclado = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    [UIView beginAnimations:@"animateFormUp" context:NULL];
    viewContainer.frame = CGRectOffset(viewContainer.frame, 0, -tamanhoTeclado.height + viewContainer.frame.size.height/2);
    [UIView commitAnimations];
}

-(void)tecladoFechado:(NSNotification *)notification
{
    NSDictionary* info = [notification userInfo];
    CGSize tamanhoTeclado = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    [UIView beginAnimations:@"animateFormDown" context:NULL];
    viewContainer.frame = CGRectOffset(viewContainer.frame, 0, +tamanhoTeclado.height - viewContainer.frame.size.height/2);
    [UIView commitAnimations];
}

-(IBAction)verificarMaioridade:(id)sender
{
    if ([[txtNome text] isEqualToString:@""])
    {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Erro" message:@"Digite o campo Nome" delegate:self cancelButtonTitle:@"Fechar" otherButtonTitles:nil];
        [alert show];
    }
    else if ([[txtIdade text] isEqualToString:@""])
    {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Erro" message:@"Digite o campo Idade" delegate:self cancelButtonTitle:@"Fechar" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        [txtNome resignFirstResponder];
        [txtIdade resignFirstResponder];
        
        NSNumberFormatter * numberFormatter = [[NSNumberFormatter alloc] init];
        NSNumber * idade = [numberFormatter numberFromString:[txtIdade text]];
        Contatos * contato = [[Contatos alloc] initWithName:[txtNome text] age:idade];
        
        if ([contato isMaiorDeIdade])
            [lblResultado setText:[NSString stringWithFormat:@"%@ é maior de idade", txtNome.text]];
        else
            [lblResultado setText:[NSString stringWithFormat:@"%@ não é maior de idade", txtNome.text]];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

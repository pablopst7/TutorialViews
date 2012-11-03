//
//  Scroll3ViewController.m
//  TutorialViews
//
//  Created by Daigo Matsuoka on 29/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import "Scroll3ViewController.h"

@interface Scroll3ViewController ()

@end

@implementation Scroll3ViewController

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
    
    for (int x=0; x<3; x++)
    {
        // Cria um label centralizado em cada página do scroll
        UILabel * lblPagina = [[UILabel alloc] initWithFrame:CGRectMake(20 + scroll.frame.size.width*x, 100, 280, 40)];
        // Muda o título do label
        [lblPagina setText:[NSString stringWithFormat:@"Página %d", x+1]];
        // Centraliza o texto
        [lblPagina setTextAlignment:NSTextAlignmentCenter];
        // Deixa a cor do fundo transparente
        [lblPagina setBackgroundColor:[UIColor clearColor]];
        // Coloca o texto em branco
        [lblPagina setTextColor:[UIColor whiteColor]];
        // Adiciona ao scroll view
        [scroll addSubview:lblPagina];
    }
    
    [scroll setContentSize:CGSizeMake(scroll.frame.size.width*3, scroll.frame.size.height)];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    // Pega a largura do scroll view
    CGFloat pageWidth = scrollView.frame.size.width;
    // Pega a largura do conteúdo do scroll view (no nosso caso, 3x mais)
    float floatPagina = scrollView.contentOffset.x / pageWidth;
    // Arredonda a divisão para inteiro
    int page = lround(floatPagina);
    
    // Muda a página no page control
    [pageControl setCurrentPage:page];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

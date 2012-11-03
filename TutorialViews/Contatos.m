//
//  Contatos.m
//  TesteClasses
//
//  Created by Daigo Matsuoka on 26/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import "Contatos.h"

@implementation Contatos

-(id)initWithName:(NSString *)n age:(NSNumber *)i
{
	// certifica se que você esteja trabalhando na superclasse
	if (self = [super init])
    {
 		// Define as variáveis de instância de acordo com os parâmetros
		self.nome = n;
		self.idade = i;
	}
    
	return self;
}

-(BOOL)isMaiorDeIdade
{
	if ([[self idade] intValue]>=18) {
		return YES;
	}
	else {
		return NO;
	}
}

@end

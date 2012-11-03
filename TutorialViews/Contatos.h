//
//  Contatos.h
//  TesteClasses
//
//  Created by Daigo Matsuoka on 26/10/12.
//  Copyright (c) 2012 iMasters Pro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contatos : NSObject

@property (nonatomic, retain) NSString *nome;
@property (nonatomic, retain) NSNumber *idade;

-(id)initWithName:(NSString *)n age:(NSNumber *)i;
-(BOOL)isMaiorDeIdade;


@end

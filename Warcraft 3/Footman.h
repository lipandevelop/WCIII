//
//  Footman.h
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Footman : Unit

@property (nonatomic, assign) int healthPoints;
@property (nonatomic, assign) int attackPower;

-(instancetype)initWithHP:(int)hp AP:(int)ap;
-(void)damage: (int)damageTaken;
-(void)attack: (Unit *)unit withDamage: (int)damageDealt;

@end

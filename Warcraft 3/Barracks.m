//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init {
    _gold = 1000;
    _food = 80;
    return self;
}

-(Peasant *)trainPeasant {
    BOOL canTrainPeasant = [self canTrainPeasant];
    if (canTrainPeasant) {
        self.gold = self.gold - 90;
        self.food = self.food -5;
        return [[Peasant alloc]init];
    }
    return nil;
}


- (Footman *)trainFootman{
    BOOL canTrainFootman = [self canTrainFootman];
    if (canTrainFootman) {
    self.gold = self.gold - 135;
    self.food = self.food - 2;
    return [[Footman alloc]init];
    }else{
        return nil;
    }
}

-(BOOL)canTrainPeasant {
    if (self.gold >= 90 && self.food >4) {
        return YES;
    }
    else {
        return NO;
    }
}

-(BOOL)canTrainFootman {
    if (self.gold >= 135 && self.food >= 2) {
        return YES;
    }
    else {
        return NO;
    }
}

@end

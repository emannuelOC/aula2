//
//  Series.m
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "Series.h"

@interface Series()
@property (strong, nonatomic) NSString *creator;
@end

@implementation Series

- (void)setResponsible:(NSString *)responsible {
    _creator = responsible;
}

- (NSString *)getResponsible {
    return [NSString stringWithFormat:@"Criador: %@", _creator];
}











@end

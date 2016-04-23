//
//  Movie.m
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "Movie.h"

@interface Movie()
@property (strong, nonatomic) NSString *director;
@end

@implementation Movie

- (void)setResponsible:(NSString *)responsible {
    _director = responsible;
}

- (NSString *)getResponsible {
    return  [NSString stringWithFormat:@"Diretor: %@", _director];
}









@end

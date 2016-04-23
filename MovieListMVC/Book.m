//
//  Book.m
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "Book.h"

@interface Book()
@property (strong, nonatomic) NSString *author;
@end

@implementation Book

- (void)setResponsible:(NSString *)responsible {
    _author = responsible;
}

- (NSString *)getResponsible {
    return [NSString stringWithFormat:@"Autor: %@", _author];
}

@end











//
//  Item.h
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *year;
@property (strong, nonatomic) NSString *itemDescription;
// Methods to be implemented at subclasses
- (void)setResponsible:(NSString *)responsible;
- (NSString *)getResponsible;
@end

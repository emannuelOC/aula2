//
//  Library.h
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Item;

@interface Library : NSObject

- (void)addItem:(Item *)item;
- (void)removeItem:(Item *)item;
- (void)removeItemAtIndex:(NSInteger)index;
- (Item *)itemForIndex:(NSInteger)index;
- (NSInteger)numberOfItems;

@end

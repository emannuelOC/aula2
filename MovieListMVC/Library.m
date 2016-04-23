//
//  Library.m
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "Library.h"

@interface Library()
@property (strong, nonatomic) NSMutableArray *items;
@end

@implementation Library

- (Library *)init {
    self = [super init];
    if (self) {
        _items = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addItem:(Item *)item {
    [_items addObject:item];
    [self notify];
}

- (void)removeItem:(Item *)item {
    [_items removeObject:item];
    [self notify];
}

- (void)removeItemAtIndex:(NSInteger)index {
    if (index < 0 || index >= _items.count) {
        return;
    }
    // tudo certo 👍🏻✅
    [_items removeObjectAtIndex:index];
    [self notify];
}

- (Item *)itemForIndex:(NSInteger)index {
    if (index < 0 || index >= _items.count) {
        return nil;
    }
    return _items[index];
}

- (NSInteger)numberOfItems {
    return _items.count;
}

- (void)notify {
    NSNotification *notification = [NSNotification notificationWithName:@"DidUpdateItems" object:self];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}

@end










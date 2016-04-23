//
//  ItemListTableViewController.m
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "ItemListTableViewController.h"
#import "AddItemTableViewController.h"
#import "Library.h"
#import "Item.h"

@interface ItemListTableViewController ()
@property (strong, nonatomic) Library *library;
@end

@implementation ItemListTableViewController

#pragma mark - ViewController life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateUI:) name:@"DidUpdateItems" object:nil];
    _library = [[Library alloc] init];
}

#pragma mark - observer methods

- (void)updateUI:(NSNotification *)notification {
    [self.tableView reloadData];
}

#pragma mark - TableView data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_library numberOfItems];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell" forIndexPath:indexPath];
    
    Item *item = [_library itemForIndex:indexPath.row];
    cell.textLabel.text = item.title;
    cell.detailTextLabel.text = item.year;
    
    return cell;
}

#pragma mark - TableView delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // ...
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    //...
}

#pragma mark - navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddItem"]) {
        AddItemTableViewController *vc = (AddItemTableViewController *)((UINavigationController *)segue.destinationViewController).visibleViewController;
        vc.library = _library;
    }
}

@end

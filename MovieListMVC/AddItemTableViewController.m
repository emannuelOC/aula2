//
//  AddItemTableViewController.m
//  MovieListMVC
//
//  Created by Emannuel Carvalho on 4/16/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "AddItemTableViewController.h"
#import "Library.h"
#import "Item.h"
#import "Book.h"
#import "Movie.h"
#import "Series.h"

@interface AddItemTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *saveButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *itemTypeSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *authorTextField;
@property (weak, nonatomic) IBOutlet UITextField *yearTextField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;


@end

@implementation AddItemTableViewController

- (IBAction)cancel:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(UIBarButtonItem *)sender {
    // get info from outlets
    NSString *title = _titleTextField.text;
    NSString *author = _authorTextField.text;
    NSString *year = _yearTextField.text;
    NSString *itemDescription = _descriptionTextView.text;
    
    // declare Item object
    Item *newItem;
    
    // initialize correct subclass
    switch (_itemTypeSegmentedControl.selectedSegmentIndex) {
        case 0:
            newItem = [[Movie alloc] init];
            break;
        case 1:
            newItem = [[Book alloc] init];
            break;
        case 2:
            newItem = [[Series alloc] init];
            break;
        default:
            break;
    }
    
    // configure new Item
    newItem.title           = title;
    newItem.year            = year;
    newItem.itemDescription = itemDescription;
    [newItem setResponsible:author];
    
    // add new item to Library
    [_library addItem:newItem];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end

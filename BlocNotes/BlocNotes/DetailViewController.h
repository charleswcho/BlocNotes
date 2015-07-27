//
//  DetailViewController.h
//  BlocNotes
//
//  Created by Charles Wesley Cho on 7/22/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class Event;
// Added NSFetchResultsControllerDelegate
@interface DetailViewController : UITableViewController <NSFetchedResultsControllerDelegate>
//
@end

@interface DetailViewController ()

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UITextView *textView;

// Added these to be able to fetch and save
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//
@end


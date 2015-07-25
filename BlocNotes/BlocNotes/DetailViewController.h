//
//  DetailViewController.h
//  BlocNotes
//
//  Created by Charles Wesley Cho on 7/22/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Event;

@interface DetailViewController : UITableViewController

@property (nonatomic, strong) Event *event;

@end

@interface DetailViewController ()

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UITextView *textView;


@end


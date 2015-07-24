//
//  DetailViewController.m
//  BlocNotes
//
//  Created by Charles Wesley Cho on 7/22/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()  <UITextViewDelegate>

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
        
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self configureView];
    self.textView.delegate = self;
    [self retrieveStringFromStringPath];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([_textView isFirstResponder] && [touch view] != _textView) {
        [_textView resignFirstResponder];
        
        NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [documentPaths objectAtIndex:0];
        self.documentTXTPath = [documentsDirectory stringByAppendingPathComponent:@"savedText.txt"];
        
        NSString *savedString = _textView.text;
        
        [savedString writeToFile:self.documentTXTPath atomically:YES encoding:NO error:nil];

    }
    [super touchesBegan:touches withEvent:event];
}

- (void)retrieveStringFromStringPath {
    
    NSString *retrievedString = [[NSString alloc] initWithContentsOfFile:self.documentTXTPath encoding:NO error:nil];
    
    _textView.text = retrievedString;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

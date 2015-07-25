//
//  Note text.h
//  BlocNotes
//
//  Created by Charles Wesley Cho on 7/23/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DetailViewController;

@interface Note : NSObject <NSCoding>

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;

@property (nonatomic, strong) NSString *documentTXTPath;

- (instancetype) initWithDictionary:(NSArray *)noteDictionary;

@end

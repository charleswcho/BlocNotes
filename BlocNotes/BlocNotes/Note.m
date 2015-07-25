//
//  Note text.m
//  BlocNotes
//
//  Created by Charles Wesley Cho on 7/23/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import "Note.h"
#import "DetailViewController.h"

@implementation Note

- (instancetype) initWithDictionary:(NSDictionary *)noteDictionary {
    self = [super init];
    
    if (self) {
        self.title = noteDictionary[@"title"];
        self.text = noteDictionary[@"text"];
    }
    
    return self;
}

#pragma mark - NSCoding


- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super init];

    if (self) {
        self.title = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(title))];
        self.text = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(text))];
    }

    return self;
}


- (void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.title forKey:NSStringFromSelector(@selector(title))];
    [aCoder encodeObject:self.text forKey:NSStringFromSelector(@selector(text))];
}


@end

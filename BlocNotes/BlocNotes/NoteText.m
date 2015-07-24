//
//  Note text.m
//  BlocNotes
//
//  Created by Charles Wesley Cho on 7/23/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import "NoteText.h"
#import "DetailViewController.h"

@implementation NoteText



- (void)saveStringFromStringPath {

    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [documentPaths objectAtIndex:0];
    self.documentTXTPath = [documentsDirectory stringByAppendingPathComponent:@"savedText.txt"];
    
    
    NSString *savedString = self.DetailViewController.textView.text;

    [savedString writeToFile:self.documentTXTPath atomically:YES encoding:NO error:nil];
}

- (void)retrieveStringFromStringPath {
    
    NSString *retrievedString = [[NSString alloc] initWithContentsOfFile:self.documentTXTPath encoding:NO error:nil];
    
    _textView.text = retrievedString;
}











//#pragma mark - NSCoding
//
//- (void) encodeWithCoder:(NSCoder *)aCoder {
//    [aCoder encodeObject:self.idNumber forKey:NSStringFromSelector(@selector(idNumber))];
//    [aCoder encodeObject:self.profilePictureURL forKey:NSStringFromSelector(@selector(profilePictureURL))];
//}
//
//- (instancetype) initWithCoder:(NSCoder *)aDecoder {
//    self = [super init];
//    
//    if (self) {
//        self.idNumber = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(idNumber))];
//        self.profilePictureURL = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(profilePictureURL))];
//    }
//    
//    return self;
//}
//
//#pragma mark - NSKeyedArchiver : Save and Read
//
//- (NSString *) pathForFilename:(NSString *) filename {
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths firstObject];
//    NSString *dataPath = [documentsDirectory stringByAppendingPathComponent:filename];
//    return dataPath;
//}
//
//- (void) saveImages {
//    
//    if (self.mediaItems.count > 0) {
//        // Write the changes to disk
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//            NSUInteger numberOfItemsToSave = MIN(self.mediaItems.count, 50);
//            NSArray *mediaItemsToSave = [self.mediaItems subarrayWithRange:NSMakeRange(0, numberOfItemsToSave)];
//            
//            NSString *fullPath = [self pathForFilename:NSStringFromSelector(@selector(mediaItems))];
//            NSData *mediaItemData = [NSKeyedArchiver archivedDataWithRootObject:mediaItemsToSave];
//            
//            NSError *dataError;
//            BOOL wroteSuccessfully = [mediaItemData writeToFile:fullPath options:NSDataWritingAtomic | NSDataWritingFileProtectionCompleteUnlessOpen error:&dataError];
//            
//            if (!wroteSuccessfully) {
//                NSLog(@"Couldn't write file: %@", dataError);
//            }
//        });
//        
//    }
//}


@end

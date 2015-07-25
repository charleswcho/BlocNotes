//
//  Event.h
//  BlocNotes
//
//  Created by Charles Wesley Cho on 7/25/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * noteText;
@property (nonatomic, retain) NSString * title;

@end

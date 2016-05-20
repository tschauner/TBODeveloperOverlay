//
//  TBODebugDatasource.m
//  TBODeveloperOverlay
//
//  Created by Thorsten Stark on 29.04.16.
//  Copyright © 2016 TBO INTERACTIVE. All rights reserved.
//

#import "TBODebugDatasource.h"

@implementation TBODebugDatasource

- (NSString *)titleForSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Section: %ld", (long)section];
}

- (NSInteger)numberOfSections {
    return 3;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    return section+1;
}

- (NSString *)keyForIndexPath:(NSIndexPath *)indexPath {
    return [NSString stringWithFormat:@"Title %ld - %ld", (long)indexPath.section, (long)indexPath.row];
}

- (id)valueForIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return @"some String";
        case 1:
            return @YES;
        case 2:
            return @1;
            
        default:
            return nil;
    }
}

- (NSString *)descriptionForIndexPath:(NSIndexPath *)indexPath {
    return [NSString stringWithFormat:@"Description for %@", indexPath ];
}

- (BOOL)isEditableForIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 2:
            return YES;
        default:
            return NO;
    }
}

- (void)didChangeValue:(id)value atIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Did Change Value: %@ at %@", value, indexPath);
}

@end

//
//  TUSTaxman.m
//  TestsUsing
//
//  Created by azat on 14/12/15.
//  Copyright © 2015 azat. All rights reserved.
//

#import "TUSTaxman.h"

@implementation TUSTaxman

- (void)receiveTaxes:(NSDecimalNumber *)taxes sender:(id)sender {
    if (!_records)
        _records = [NSDictionary new];
    
    NSMutableDictionary *tmpRecords = [_records mutableCopy];
    [tmpRecords setObject:taxes forKey:[[NSDateFormatter new] stringFromDate:[NSDate date]]];
    _records = [tmpRecords copy];
}

@end

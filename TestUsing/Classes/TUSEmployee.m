//
//  TUSEmployee.m
//  AFS
//
//  Created by azat on 12/12/15.
//  Copyright © 2015 azat. All rights reserved.
//

#import "TUSEmployee.h"

@implementation TUSEmployee

- (instancetype)init
{
    self = [super init];
    if (self) {
        _salaryHistory = @[];
    }
    return self;
}

- (NSNumber *)bestSalary {
    NSNumber *max = self.salaryHistory.firstObject;
    for (NSNumber *salary in self.salaryHistory) {
        if ([salary compare:max] == NSOrderedDescending) {
            max = salary;
        }
    }
    return max;
}

- (void)takeMoney:(NSNumber *)amount
{
    _totalAmount = @(_totalAmount.floatValue + amount.floatValue);
    [self payTaxes];
}

- (void)setCurrentSalary:(NSNumber *)currentSalary
{
    _currentSalary = currentSalary;
    NSMutableArray *arr = [self.salaryHistory mutableCopy];
    [arr addObject:currentSalary];
    self.salaryHistory = [arr copy];
}

- (void)payTaxes {
    [_taxesProvider baseTaxes];
}

@end

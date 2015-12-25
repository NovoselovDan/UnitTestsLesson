//
//  TUSCompany.m
//  AFS
//
//  Created by azat on 12/12/15.
//  Copyright © 2015 azat. All rights reserved.
//

#import "TUSCompany.h"
#import "TUSEmployee.h"

@implementation TUSCompany

- (void)payToEmployee:(TUSEmployee *)employee {
    [employee takeMoney:employee.currentSalary ];
    NSDecimalNumber *taxValue = [NSDecimalNumber numberWithFloat:[[_taxesProvider retireInsuranceTaxes] floatValue] * [employee.currentSalary floatValue]];
    
    _totalAmount = [NSNumber numberWithFloat:_totalAmount.floatValue - employee.currentSalary.floatValue - taxValue.floatValue];
    [_taxman receiveTaxes:taxValue sender:self];
}

@end


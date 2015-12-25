//
//  TUSEmployee.h
//  AFS
//
//  Created by azat on 12/12/15.
//  Copyright © 2015 azat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TUSTaxesProvider.h"
#import "TUSTaxman.h"

//@class TUSTaxman;

@interface TUSEmployee : NSObject

@property (nonatomic, strong) NSArray *salaryHistory;

@property (nonatomic, strong) NSNumber *currentSalary;

@property (nonatomic, strong) NSNumber *totalAmount;

@property (nonatomic, strong) TUSTaxman *taxman;

@property (nonatomic, strong) id<TUSTaxesProvider> taxesProvider;

- (NSNumber *)bestSalary;

- (void)takeMoney:(NSNumber *)amount;

@end

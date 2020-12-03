//
//  DLBNewFilm.m
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//  Copyright © 2020 delight.lab. All rights reserved.
//

#import "DLBNewFilm.h"

static NSString * const titleKey = @"title";

@implementation DLBNewFilm

- (instancetype)initWithTitle:(NSString *)title
{
    self = [super init];
    if (self) {
        _title = title;
    } return self;
}

@end

@implementation DLBNewFilm (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *title = dictionary[titleKey];
    
    return [self initWithTitle:title];
}

@end

//
//  DLBPlanetController.m
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//  Copyright © 2020 delight.lab. All rights reserved.
//

#import "DLBPlanetController.h"

static NSString * const baseURLString = @"https://swapi.dev/api";
static NSString * const planetsComponent = @"planets";

@implementation DLBPlanetController


+ (void)fetchPlanets:(void (^)(NSArray<DLBPlanet *> * _Nullable))completion
{
    NSURL *baseURL = [NSURL URLWithString:baseURLString];
    NSURL *finalURL = [baseURL URLByAppendingPathComponent:planetsComponent];
    
    [[NSURLSession.sharedSession dataTaskWithURL:finalURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error)
        {
            NSLog(@"There was an error in %s: %@, %@", __PRETTY_FUNCTION__, error, [error localizedDescription]);
            return completion(nil);
        }
        
        if (response)
        {
            NSLog(@"%@", response);
        }
        
        if (!data)
        {
            NSLog(@"%@", error.localizedDescription);
            return completion(nil);
        }
        
        NSDictionary *topLevelJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        
        if (!topLevelJSON)
        {
            NSLog(@"%@", error.localizedDescription);
            return completion(nil);
        }
        
        NSArray<NSDictionary *> *secondLevelJSON = topLevelJSON[@"results"];
        
        NSMutableArray *arrayOfPlanets = [NSMutableArray new];
        
        for (NSDictionary *currentDictionary in secondLevelJSON)
        {
            DLBPlanet *planet = [[DLBPlanet alloc] initWithDictionary:currentDictionary];
            [arrayOfPlanets addObject:planet];
        }
        completion(arrayOfPlanets);
        
    }]resume];
    
}

@end

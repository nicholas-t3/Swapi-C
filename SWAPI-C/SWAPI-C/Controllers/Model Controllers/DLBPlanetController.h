//
//  DLBPlanetController.h
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//  Copyright © 2020 delight.lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLBPlanet.h"

NS_ASSUME_NONNULL_BEGIN

@interface DLBPlanetController : NSObject

+(void)fetchPlanets: (void (^) (NSArray<DLBPlanet *> *_Nullable))completion;

@end

NS_ASSUME_NONNULL_END

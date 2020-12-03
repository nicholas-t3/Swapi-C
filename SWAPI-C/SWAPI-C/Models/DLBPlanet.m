//
//  DLBPlanet.m
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//

#import "DLBPlanet.h"

static NSString * const nameKey = @"name";
static NSString * const climateKey = @"climate";
static NSString * const terrainKey = @"terrain";
static NSString * const populationKey = @"population";
static NSString * const filmsKey = @"films";

@implementation DLBPlanet

- (instancetype)initWithName:(NSString *)name climate:(NSString *)climate terrain:(NSString *)terrain population:(NSString *)population films:(NSArray<NSString *> *)films
{
    self = [super init];
    if (self)
    {
        _name = name;
        _climate = climate;
        _terrain = terrain;
        _population = population;
        _films = films;
    } return self;
}

@end

@implementation DLBPlanet (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *name = dictionary[nameKey];
    NSString *climate = dictionary[climateKey];
    NSString *terrain = dictionary[terrainKey];
    NSString *population = dictionary[populationKey];
    NSArray *films = dictionary[filmsKey];
    return [self initWithName:name climate:climate terrain:terrain population:population films:films];
}

@end

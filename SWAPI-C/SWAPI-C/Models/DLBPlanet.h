//
//  DLBPlanet.h
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLBPlanet : NSObject

@property (nonatomic, copy, readonly)NSString *name;
@property (nonatomic, copy, readonly)NSString *climate;
@property (nonatomic, copy, readonly)NSString *terrain;
@property (nonatomic, copy, readonly)NSString *population;
@property (nonatomic, copy, readonly)NSArray<NSString *> *films;

-(instancetype)initWithName:(NSString *)name climate:(NSString *)climate terrain: (NSString *)terrain population:(NSString *)population films:(NSArray<NSString *> *)films;

@end

@interface DLBPlanet (JSONConvertable)

-(instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END

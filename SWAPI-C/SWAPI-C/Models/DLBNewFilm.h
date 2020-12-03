//
//  DLBNewFilm.h
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//  Copyright © 2020 delight.lab. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLBNewFilm : NSObject
@property (nonatomic, copy, readonly)NSString *title;
-(instancetype)initWithTitle: (NSString *)title;

@end

@interface DLBNewFilm (JSONConvertable)

-(instancetype) initWithDictionary: (NSDictionary<NSString *, id> *)dictionary;


@end

NS_ASSUME_NONNULL_END

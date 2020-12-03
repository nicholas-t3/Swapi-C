//
//  DLBNewFilmController.h
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//  Copyright © 2020 delight.lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLBNewFilm.h"

NS_ASSUME_NONNULL_BEGIN

@interface DLBNewFilmController : NSObject

+(void)fetchFilms:(NSURL *)url (DLBNewFilm *_Nullable))completion;

@end

NS_ASSUME_NONNULL_END

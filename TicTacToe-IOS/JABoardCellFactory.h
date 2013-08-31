//
//  JABoardCellFactory.h
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/31/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JATicTacToePlayer.h"

@class JABoardCell;
@interface JABoardCellFactory : NSObject
+ (JABoardCell *)cellAtRow:(NSInteger)row column:(NSInteger)column player:(JATicTacToePlayer)player;
@end

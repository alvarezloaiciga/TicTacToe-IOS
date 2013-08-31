//
//  JABoard.h
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JATicTacToePlayer.h"
#import "JABoardDelegate.h"

@class JABoardCell;
@interface JABoard : NSObject
@property (nonatomic, readonly) NSArray *cells;
@property (nonatomic, weak) id <JABoardDelegate> delegate;

- (JABoardCell *)cellAtRow:(NSInteger)row column:(NSInteger)column;
- (void)markCellAtRow:(NSInteger)row column:(NSInteger)column player:(JATicTacToePlayer)player;
@end

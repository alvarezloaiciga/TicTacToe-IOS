//
//  JABoardCellFactory.m
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/31/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import "JABoardCellFactory.h"
#import "JABoardCellPlayerOne.h"
#import "JABoardCellPlayerTwo.h"

@implementation JABoardCellFactory
+ (JABoardCell *)cellAtRow:(NSInteger)row column:(NSInteger)column player:(JATicTacToePlayer)player
{
    switch (player) {
        case JATicTacToePlayerOne:
            return [[JABoardCellPlayerOne alloc] initWithRow:row column:column];
            
        case JATicTacToePlayerTwo:
            return [[JABoardCellPlayerTwo alloc] initWithRow:row column:column];
    }
}
@end

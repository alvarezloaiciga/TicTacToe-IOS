//
//  JABoard.m
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import "JABoard.h"
#import "JABoardCell.h"
#import "JABoardCellEmpty.h"
#import "JABoardCellFactory.h"

@implementation JABoard
- (id)init
{
    if ((self = [super init])) {
        _cells = [self cellsForEmtpyBoard];
    }
    
    return self;
}

- (JABoardCell *)cellAtRow:(NSInteger)row column:(NSInteger)column
{
    NSArray *cells = [self.cells filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"row = %d and column = %d", row, column]];
    return [cells lastObject];
}

- (void)markCellAtRow:(NSInteger)row column:(NSInteger)column player:(JATicTacToePlayer)player
{
    JABoardCell *cellToMark = [self cellAtRow:row column:column];
    if ([cellToMark isKindOfClass:[JABoardCellEmpty class]]) {
        NSInteger indexOfCellToMark = [self.cells indexOfObject:cellToMark];
        JABoardCell *newCell = [JABoardCellFactory cellAtRow:row column:column player:player];
        
        NSMutableArray *cells = self.cells.mutableCopy;
        [cells replaceObjectAtIndex:indexOfCellToMark withObject:newCell];
        _cells = [NSArray arrayWithArray:cells];
    }else{
        [self.delegate invalidMark];
    }
}


- (NSArray *)cellsForEmtpyBoard
{
    NSMutableArray *cells = [NSMutableArray array];
    for (NSInteger row = 0; row < 3; row++) {
        for (NSInteger column = 0; column < 3; column ++) {
            JABoardCellEmpty *emptyCell = [[JABoardCellEmpty alloc] initWithRow:row column:column];
            [cells addObject: emptyCell];
        }
    }
    
    return cells;
}
@end

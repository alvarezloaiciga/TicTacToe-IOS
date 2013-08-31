//
//  JABoardCellPlayerOne.m
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import "JABoardCellPlayerOne.h"

@implementation JABoardCellPlayerOne
- (id)initWithRow:(NSInteger)row column:(NSInteger)column
{
    if ((self = [super initWithRow:row column:column])) {
        identifier = @"X";
    }
    return self;
}
@end

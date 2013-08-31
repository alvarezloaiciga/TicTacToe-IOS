//
//  JABoardCellEmpty.m
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import "JABoardCellEmpty.h"

@implementation JABoardCellEmpty
- (id)initWithRow:(NSInteger)row column:(NSInteger)column
{
    if ((self = [super initWithRow:row column:column])) {
        identifier = @"-";
    }
    return self;
}
@end

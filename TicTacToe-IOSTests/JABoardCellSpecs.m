//
//  JABoardCell.m
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "JABoardCell.h"
#import "JABoardCellPlayerOne.h"
#import "JABoardCellPlayerTwo.h"
#import "JABoardCellEmpty.h"

SPEC_BEGIN(JABoardCellSpecs)
describe(@"JABoardCell", ^{
    it(@"has an identifier", ^{
        JABoardCell *cell = [[JABoardCell alloc] initWithRow:0 column:0];
        [[theBlock(^{[cell identifier];}) shouldNot] raise];
    });
});

describe(@"JABoardCellPlayerOne", ^{
    it(@"has an identifier of 'X'", ^{
        JABoardCellPlayerOne *cell = [[JABoardCellPlayerOne alloc] initWithRow:0 column:0];
        [[[cell identifier] should] equal:@"X"];
    });
});

describe(@"JABoardCellPlayerTwo", ^{
    it(@"has an identifier of 'O'", ^{
        JABoardCellPlayerTwo *cell = [[JABoardCellPlayerTwo alloc ] initWithRow:0 column:0];
        [[[cell identifier] should] equal:@"O"];
    });
});

describe(@"JABoardCellEmpty", ^{
    it(@"has an identifier of '-'", ^{
        JABoardCellEmpty *cell = [[JABoardCellEmpty alloc] initWithRow:0 column:0];
        [[[cell identifier] should] equal:@"-"];
    });
});
SPEC_END

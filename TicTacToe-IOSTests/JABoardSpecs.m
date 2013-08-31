
#import <Kiwi/Kiwi.h>
#import "JABoard.h"
#import "JABoardCellEmpty.h"
#import "JABoardCellPlayerOne.h"
#import "JABoardCellPlayerTwo.h"
#import "JABoardDelegate.h"

SPEC_BEGIN(JABoardSpecs)

describe(@"Board", ^{
    
    id boardDelegateMock = [KWMock mockForProtocol:@protocol(JABoardDelegate)];
    __block JABoard *board;
    
    beforeEach(^{
        board = [JABoard new];
    });
    
    describe(@"initialize", ^{
        it(@"has 9 empty cells", ^{
            [[[board should] have:9] cells];
            [[board.cells[0] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[1] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[2] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[3] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[4] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[5] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[6] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[7] should] beKindOfClass:[JABoardCellEmpty class]];
            [[board.cells[8] should] beKindOfClass:[JABoardCellEmpty class]];
        });
        
        it(@"has a delegate", ^{
            [[theBlock(^{
                board.delegate = boardDelegateMock;
            }) shouldNot] raise];
        });
    });
    
    describe(@"cell at row and column", ^{
        it(@"returns a valid cell", ^{
            [[[board cellAtRow:0 column:0] should] beKindOfClass:[JABoardCellEmpty class]];
        });
        
        it(@"throws a NSInvalidArgumentException", ^{
            [[[board cellAtRow:3 column:3] should] beNil];
        });
    });
    
    describe(@"mark cell for player", ^{
        it(@"marks cell for player one", ^{
            [board markCellAtRow:0 column:0 player: JATicTacToePlayerOne];
            [[[board cellAtRow:0 column:0] should] beKindOfClass:[JABoardCellPlayerOne class]];
        });
        
        it(@"marks cell for player two",^{
            [board markCellAtRow:0 column:0 player: JATicTacToePlayerTwo];
            [[[board cellAtRow:0 column:0] should] beKindOfClass:[JABoardCellPlayerTwo class]];
        });
        
        it(@"marks a marked cell", ^{
            [board markCellAtRow:0 column:0 player: JATicTacToePlayerOne];
            board.delegate = boardDelegateMock;
            [[boardDelegateMock should] receive:@selector(invalidMark)];
            [board markCellAtRow:0 column:0 player: JATicTacToePlayerOne];
        });
    });
});

SPEC_END
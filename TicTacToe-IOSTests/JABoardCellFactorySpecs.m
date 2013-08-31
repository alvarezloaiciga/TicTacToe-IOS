//
//  JABoardCellFactorySpecs.m
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/31/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "JABoardCellFactory.h"
#import "JATicTacToePlayer.h"
#import "JABoardCellPlayerOne.h"
#import "JABoardCellPlayerTwo.h"

SPEC_BEGIN(JABoardCellFactorySpecs)

describe(@"creates cells for different players", ^{
    it(@"creates cell for player one", ^{
        JABoardCell *cell = [JABoardCellFactory cellAtRow:0 column:0 player:JATicTacToePlayerOne];
        [[cell should] beKindOfClass:[JABoardCellPlayerOne class]];
    });
    
    it(@"creates cell for player two", ^{
        JABoardCell *cell = [JABoardCellFactory cellAtRow:0 column:0 player:JATicTacToePlayerTwo];
        [[cell should] beKindOfClass:[JABoardCellPlayerTwo class]];
    });
});

SPEC_END
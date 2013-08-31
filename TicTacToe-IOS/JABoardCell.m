//
//  JABoardCell.m
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import "JABoardCell.h"

@interface JABoardCell ()
@property (nonatomic) NSInteger row;
@property (nonatomic) NSInteger column;
@end

@implementation JABoardCell

- (id)initWithRow:(NSInteger)row column:(NSInteger)column
{
    if ((self = [super init])) {
        _row = row;
        _column = column;
    }
    
    return self;
}

- (NSString *)identifier
{
    return identifier;
}
@end

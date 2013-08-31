//
//  JABoardCell.h
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JATicTacToePlayer.h"

@interface JABoardCell : NSObject{
    @protected
    NSString *identifier;
}
@property (nonatomic, readonly) NSString *identifier;

- (id)initWithRow:(NSInteger)row column:(NSInteger)column;
@end

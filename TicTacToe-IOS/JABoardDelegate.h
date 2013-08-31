//
//  JABoardDelegate.h
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/31/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JABoardDelegate <NSObject>
@optional
- (void) invalidMark;
@end

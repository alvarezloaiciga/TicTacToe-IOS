//
//  JAAppDelegate.h
//  TicTacToe-IOS
//
//  Created by José Andrés Alvarez Loáiciga on 8/30/13.
//  Copyright (c) 2013 Jose Andres Alvarez. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JAViewController;

@interface JAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) JAViewController *viewController;

@end

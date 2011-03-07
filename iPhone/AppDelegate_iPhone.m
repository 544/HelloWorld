//
//  AppDelegate_iPhone.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/06.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate_iPhone.h"
// App用のヘッダ
#import "HelloWorld.h"


@implementation AppDelegate_iPhone

@synthesize window=_window;


#pragma mark -
#pragma mark Application lifecycle

// 起動完了後に呼ばれる。
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	// ThisCode is HelloWorld ver 1
    UIView* view=[[HelloWorld alloc]
				  initWithFrame:CGRectMake(0, 20, 728, 1004)];
	
	[_window addSubview:view];
	[view release];

	// This Code is HelloWorld ver 2
	
	// ウインドウ生成
	
	[_window makeKeyAndVisible];
	
    return YES;
}

// メモリの解放
- (void)dealloc {
    [_window release];
    [super dealloc];
}

@end

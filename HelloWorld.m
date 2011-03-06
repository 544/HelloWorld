//
//  HelloWorld.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/06.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld.h"

// HelloWorldの実装
@implementation HelloWorld

//初期化
- (id)initWithFrame:(CGRect)frame {
	if(self=[super initWithFrame:frame] ) {
		//
		self.backgroundColor = [UIColor whiteColor];
	}
	
	return self;
}

//メモリ解放
- (void) dealloc {
	[super dealloc];
}

//描画
- (void) drawRect:(CGRect)rect {
	UIFont * font = [UIFont systemFontOfSize:24];
	[@"HelloWorld!!!" drawAtPoint:CGPointMake(0, 0) withFont:font];
}

@end

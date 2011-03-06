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
	
	// HelloWorldを描画
	UIFont * font = [UIFont systemFontOfSize:24];	// fontを設定するためにUIFont型へのポインタを作成する。
	[@"HelloWorld!!!" drawAtPoint // 文字列に対してメッセージ
						:CGPointMake(0, 0)  // 第一引数は位置情報
						 withFont:font]; // 引数WithFontに上で作ったfontを渡す。
	
	// 変数を使ってみる。
	int num1 = 100;
	int num2 = 200;
	int sum;
	// 演算
	sum = num1 + num2;
	// 描画用文字列の生成
	NSString* text = [NSString stringWithFormat:@"%d + %d = %d",num1,num2,sum];
	// 描画
	[text drawAtPoint:CGPointMake(0,24) withFont:font];
					 
	//時刻を表示してみる。
	
	NSCalendar * 	calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar ];
	//日付コンポーネントの取得
 unsigned int unitFlag = NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit |
		 NSHourCalendarUnit | NSMinuteCalendarUnit;
	NSDateComponents *	comps = [calender components:unitFlag fromDate:[NSDate date]];
	int year = [comps year];
	int month = [comps month];
	int day = [comps day];
	NSString * textdate = [NSString stringWithFormat:@"%d %d %d",year,month,day];
	NSLog(textdate,0);
	
	[textdate drawAtPoint:CGPointMake(0, 48) withFont:font];
	
	[calender release];
}

@end

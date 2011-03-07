//
//  HelloWorld2.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld2.h"


@implementation HelloWorld2

// ラベルの生成
- (UILabel*) makeLabel:(CGPoint) pos text:(NSString*)text font:(UIFont*) font {
	//位置情報の取得
	CGSize size = [text sizeWithFont:font];
	CGRect rect = CGRectMake(pos.x, pos.y, size.width, size.height);
	
	//ラベルの生成
	UILabel* label = [[[UILabel alloc] init] autorelease];
	[label setFrame:rect];
	[label setText:text];
	[label setFont:font];
	[label setTextColor:[UIColor blackColor]];
	[label setTextAlignment:UITextAlignmentLeft];
	[label setNumberOfLines:0];
	[label setLineBreakMode:UILineBreakModeWordWrap];
	[label setBackgroundColor:[UIColor clearColor]];
	
	return label;
	
}

//イメージビューの生成
- (UIImageView*) makeImageView:(CGRect) rect image:(UIImage*)image {
	UIImageView* imageview = [[[UIImageView alloc] init] autorelease];
	[imageview setFrame:rect];
	[imageview setImage:image];
	return imageview;
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	// ラベルの生成・配置
	UILabel* label = [self makeLabel:CGPointMake(0, 0) text:@"This is Label てすと" font:[UIFont systemFontOfSize:16]];
	[self.view addSubview:label];
	
	// イメージビューの生成・配置
	UIImageView* imageView = [self makeImageView:CGRectMake(0, 50, 80, 80) image:[UIImage imageNamed:@"img.jpg"]];
	[self.view addSubview:imageView];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

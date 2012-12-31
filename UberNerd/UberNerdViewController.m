//
//  UberNerdViewController.m
//  UberNerd
//
//  Created by  on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UberNerdViewController.h"
#import "UberNerdEngine.h"


@interface UberNerdViewController()

@property (nonatomic, strong) UberNerdEngine *engine;

@end 
//----------------------------------------------------------
@implementation UberNerdViewController
@synthesize display = _display;
@synthesize engine = _engine;
//----------------------------------------------------------
- (IBAction)clearPressed:(id)sender 
{
	self.display.text = @"";
}

//----------------------------------------------------------

- (IBAction)digitPressed:(id)sender 
{
	NSString *digit = [sender currentTitle];
	
	[self.engine pushOperand:[self.display.text doubleValue]];
	
	self.display.text = digit;
	
}

//----------------------------------------------------------
- (IBAction)operationPressed:(UIButton *)sender 
{
	[self.engine pushOperation:[sender currentTitle]];
	
}
//----------------------------------------------------------	 
- (IBAction)equalsPressed:(UIButton *)sender 
{
//	double result = [self.engine operateon:[self.engine popOperand] 
//							 withOperation:[self.engine popOperation]
//							  andoperateon:[self.engine popOperand]];

	double result = [self.engine dothisoperation];
	
	NSString *resultString = [NSString stringWithFormat:@"%g", result];
	
	self.display.text = resultString;
	
	NSLog(@"%s %d %s %s", __FILE__, __LINE__, __PRETTY_FUNCTION__, __FUNCTION__);
	
	NSLog(@"%@", @"test" );
}

//----------------------------------------------------------	 


@end

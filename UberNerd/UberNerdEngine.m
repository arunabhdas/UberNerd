//
//  UberNerdEngine.m
//  UberNerd
//
//  Created by  on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UberNerdEngine.h"
//-------------------------------------------------------------------------------------
@interface UberNerdEngine()

@property (nonatomic, strong) NSMutableArray *operandStack;

@property (nonatomic, strong) NSMutableArray *operationStack;

@end
//-------------------------------------------------------------------------------------
@implementation UberNerdEngine

@synthesize operandStack = _operandStack;

@synthesize operationStack = _operationStack;


//-------------------------------------------------------------------------------------
- (NSMutableArray *) operandStack 
{
	if (_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
	return _operandStack;
}

//-------------------------------------------------------------------------------------
- (void) pushOperation:(NSString *) operationtbd
{
	[self.operationStack addObject:operationtbd];
}
//-------------------------------------------------------------------------------------
- (NSString *) popOperation
{
	NSString *operationObject = [self.operationStack lastObject];
	
	if (operationObject)
	{
		[self.operationStack removeLastObject];
	}
	return operationObject;
}

//-------------------------------------------------------------------------------------

- (void) pushOperand:(double) operand
{
	[self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

//-------------------------------------------------------------------------------------

- (double) popOperand
{
	NSNumber *operandObject = [self.operandStack lastObject];
	if (operandObject)
	{
		[self.operandStack removeLastObject];
	}
	return [operandObject doubleValue];
}
//-------------------------------------------------------------------------------------

- (double) operateon:(double) firstoperand
	   withOperation:(NSString *) operation
		andoperateon: (double) newoperand
{
	double result = 5;
	
	NSLog(@"%s %d %s %s", __FILE__, __LINE__, __PRETTY_FUNCTION__, __FUNCTION__);
	
	NSLog(@"%@", operation);
	
	if ([operation isEqualToString:@"+"])
	{
		
		result = firstoperand + newoperand;
		
	}
	else if ([operation isEqualToString:@"-"])
	{
		result = firstoperand - newoperand;
	}
	else if ([operation isEqualToString:@"*"])
	{
		result = firstoperand * newoperand;
	}
	else if ([operation isEqualToString:@"/"])
	{
		result = firstoperand / newoperand;
	}
	return result;
}
//-------------------------------------------------------------------------------------
- (double) dothisoperation
{
	double result = 1;
	
	return result;
}
//-------------------------------------------------------------------------------------
@end

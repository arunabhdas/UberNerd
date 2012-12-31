//
//  UberNerdEngine.h
//  UberNerd
//
//  Created by  on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UberNerdEngine : NSObject

//------------------------------------------------
- (void) pushOperation:(NSString *) operationtbd;

- (NSString *) popOperation;

- (void) pushOperand:(double) operand;

- (double) popOperand;



- (double) operateon:(double) firstoperand
	   withOperation:(NSString *) operation
		andoperateon: (double) newoperand;

- (NSString *) popOperation;


- (double) dothisoperation;
//------------------------------------------------
@end

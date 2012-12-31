//
//  UberNerdViewController.h
//  UberNerd
//
//  Created by  on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UberNerdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;



//----------------------------------------------------------
- (IBAction)clearPressed:(id)sender;

- (IBAction)digitPressed:(id)sender;

- (IBAction)operationPressed:(UIButton *)sender;

- (IBAction)equalsPressed:(UIButton *)sender;

//----------------------------------------------------------
@end

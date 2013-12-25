//
//  ViewController.h
//  Basic Calculator
//
//  Created by Anthony Adams on 12/18/13.
//  Copyright (c) 2013 Anthony Adams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *displayText;

- (void) addToDisplay: (NSString *) value;

- (IBAction)addition:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)division:(id)sender;
- (IBAction)subtract:(id)sender;

- (IBAction)exponential:(id)sender;
- (IBAction)mod:(id)sender;
- (IBAction)decimal:(id)sender;

- (IBAction)clearEntry:(id)sender;
- (IBAction)solveEquation:(id)sender;

- (IBAction)nine:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)zero:(id)sender;

@end

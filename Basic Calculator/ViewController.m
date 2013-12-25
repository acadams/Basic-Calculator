//
//  ViewController.m
//  Basic Calculator
//
//  Created by Anthony Adams on 12/18/13.
//  Copyright (c) 2013 Anthony Adams. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize displayText;
static NSString *signString, *value1, *value2; //values for storing numbers for basic operations.
static double result; //variable for storing operation result.
static bool equationSolved; //boolean for if an equation has been solved in the
static bool doAnotherOperation; //boolean for if you want to do an operation towards the result in the display.

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [displayText setEnabled:NO];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) addToDisplay: (NSString *) value {
    
    if (!doAnotherOperation && equationSolved) {
     equationSolved = NO;
     [displayText setText:@""];
    }
    
    [displayText setText: [displayText.text stringByAppendingString:value]];
}


- (IBAction)addition:(id)sender {
    if (equationSolved) {
        doAnotherOperation = YES;
    }
    signString = @"+";
    value1 = [displayText text];
    
    [displayText setText: [displayText.text stringByAppendingString:@" + "]];
}

- (IBAction)multiply:(id)sender {
    if (equationSolved) {
        doAnotherOperation = YES;
    }
    signString = @"*";
    value1 = [displayText text];
    
    [displayText setText: [displayText.text stringByAppendingString:@" * "]];
}

- (IBAction)division:(id)sender {
    if (equationSolved) {
        doAnotherOperation = YES;
    }
    signString = @"/";
    value1 = [displayText text];
    
    [displayText setText: [displayText.text stringByAppendingString:@" / "]];
}

- (IBAction)subtract:(id)sender {
    if (equationSolved) {
        doAnotherOperation = YES;
    }
    signString = @"-";
    value1 = [displayText text];
    
    [displayText setText: [displayText.text stringByAppendingString:@" - "]];
}

- (IBAction)exponential:(id)sender {
}

- (IBAction)mod:(id)sender {
}

- (IBAction)decimal:(id)sender {
}

- (IBAction)clearEntry:(id)sender {
    displayText.text = @"";
}

/***
Equation Logic
Set the second value
Locate which operation to use
Execute
 */
- (IBAction)solveEquation:(id)sender {
    
    // Variable for creating solved state
    equationSolved = YES;
    doAnotherOperation = NO;
    
    //Get starttng index of 2nd value
    NSUInteger val2index = [value1 length] + 2;
    value2 = [[displayText text] substringFromIndex: val2index];
    
    //Make string values into integers
    int val1 = [value1 integerValue];
    int val2 = [value2 integerValue];
    
    /**
     Things needed to do:
        1. Break down inputs into: number, sign, number
        2. Pick Appropriate solver dependent on arithmetic sign.
     */
    
    if ([signString isEqualToString:@"+"]) {
        
        result = val1 + val2;
        
        NSLog(@"%i + %i = %f", val1, val2, result);
        NSString *sumString = [NSString stringWithFormat:@"%f",result];        [displayText setText: sumString];
    }
    
    else if ([signString isEqualToString:@"-"]) {
        
        result = val1 - val2;
        
        NSLog(@"%i + %i = %f", val1, val2, result);
        NSString *sumString = [NSString stringWithFormat:@"%f",result];
        [displayText setText: sumString];
    }
    
    else if ([signString isEqualToString:@"*"]) {
        
        result = val1 * val2;
        NSLog(@"%i + %i = %f", val1, val2, result);
        NSString *sumString = [NSString stringWithFormat:@"%f",result];        [displayText setText: sumString];
    }
    
    else if ([signString isEqualToString:@"/"]) {
        
        result = val1 / val2;
        
        NSLog(@"%i + %i = %f", val1, val2, result);
        NSString *sumString = [NSString stringWithFormat:@"%f",result];        [displayText setText: sumString];
    }
    
    else {
        NSLog(@"SHOULDN'T BE HERE.");
    }
}


/**
 Action for
 */
- (IBAction)nine:(id)sender {
    [self addToDisplay:@"9"];
}
- (IBAction)eight:(id)sender {
    [self addToDisplay:@"8"];
}
- (IBAction)seven:(id)sender {
    [self addToDisplay:@"7"];
}
- (IBAction)six:(id)sender {
    [self addToDisplay:@"6"];
}
- (IBAction)five:(id)sender {
    [self addToDisplay:@"5"];
}
- (IBAction)four:(id)sender {
    [self addToDisplay:@"4"];
}
- (IBAction)three:(id)sender {
    [self addToDisplay:@"3"];
}
- (IBAction)two:(id)sender {
    [self addToDisplay:@"2"];
}
- (IBAction)one:(id)sender {
    [self addToDisplay:@"1"];
}
- (IBAction)zero:(id)sender {
    [self addToDisplay:@"0"];
}

@end

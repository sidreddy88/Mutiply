//
//  ViewController.m
//  Multiply
//
//  Created by Siddharth Sukumar on 1/7/14.
//  Copyright (c) 2014 Siddharth Sukumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    __weak IBOutlet UILabel *myMultiplier;
    __weak IBOutlet UITextField *myNumber;
    __weak IBOutlet UILabel *myAnswer;
}

@property (weak, nonatomic) IBOutlet UISlider *slider;



@end

@implementation ViewController
@synthesize slider;
- (IBAction)onCalculateButtonPressed:(id)sender {
    
    int number = [myNumber.text intValue];
    NSLog(@"The number is %i", number);
    int mutiplierNumber= [myMultiplier.text intValue];
    NSLog(@ "%i", mutiplierNumber);
    int product = number * mutiplierNumber;
    myAnswer.text = [NSString stringWithFormat:@"%i", product];
    

    
}

- (IBAction)sliderValueChanged:(id)sender {
    int good = (int)slider.value;
    myMultiplier.text = [NSString stringWithFormat:@"%i",good];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


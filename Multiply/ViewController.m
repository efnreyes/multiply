//
//  ViewController.m
//  Multiply
//
//  Created by Efrén Reyes Torres on 7/21/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@property (strong, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.mySlider.minimumValue = 1;
    self.mySlider.maximumValue = 50;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChanged:(id)sender {
    UISlider *slider = (UISlider *)sender;
    NSInteger val = lround(slider.value);
    self.myNumber.text = [NSString stringWithFormat:@"%d",val];
}

- (IBAction)onCalculateButtonPressed:(id)sender {
    int myNumber = [self.myNumber.text intValue];
    int myMultiplier = [self.myMultiplier.text intValue];
    int result = myNumber * myMultiplier;

    if (result > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    if (result % 3 == 0 && result % 5 == 0) {
        self.myAnswer.text = @"fizzbuzz";
    } else {
        if (result % 3 == 0) {
            NSLog(@"Multiplo de 3");
            self.myAnswer.text = @"fizz";
        } else if (result % 5 == 0) {
            NSLog(@"Multiplo de 5");
            self.myAnswer.text = @"buzz";
        } else {
            NSLog(@"Multiplo de ninguno");
            self.myAnswer.text = [NSString stringWithFormat:@"%d",result];
        }
    }
}

@end

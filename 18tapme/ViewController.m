//
//  ViewController.m
//  18TapMe
//
//  Created by Alejandro Gomez on 28/01/14.
//  Copyright (c) 2014 Alejandro Gomez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


#pragma mark - Init

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)setupGame
{
    self.seconds = 30;
    self.count = 0;
    
    self.timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)self.seconds];
    self.scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)self.count];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(substractTime) userInfo:nil repeats:YES];
}


#pragma mark - UIButton

- (IBAction)buttonPressed:(id)sender
{
    self.count++;
    self.scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)self.count];
}


#pragma mark - NSTimer

- (void)substractTime
{
    self.seconds--;
    self.timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)self.seconds];
    if (self.seconds == 0)
    {
        [self.timer invalidate];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"You scored %li points", (long)self.count] delegate:self cancelButtonTitle:@"Play Again"otherButtonTitles:nil];
        [alert show];
    }
}


#pragma mark - UIAlertView

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self setupGame];
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

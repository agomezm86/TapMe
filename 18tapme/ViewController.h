//
//  ViewController.h
//  18TapMe
//
//  Created by Alejandro Gomez on 28/01/14.
//  Copyright (c) 2014 Alejandro Gomez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *timerLabel;
@property (nonatomic, strong) IBOutlet UILabel *scoreLabel;

@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) NSInteger seconds;
@property (nonatomic, assign) NSTimer *timer;

@end

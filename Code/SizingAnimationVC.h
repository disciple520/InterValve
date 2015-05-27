//
//  Chp5ViewController.h
//  InterValve
//
//  Created by Spare on 8/16/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SizingSlideTwoVC;

@interface SizingAnimationVC : UIViewController

@property SizingSlideTwoVC *slide2;
@property (strong, nonatomic) IBOutlet UIImageView *animationImage;
@property (strong, nonatomic) IBOutlet UISlider *sizingSliderOutlet;
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;

- (IBAction)sizingSlider:(id)sender;

- (IBAction)backBtn:(id)sender;

@end

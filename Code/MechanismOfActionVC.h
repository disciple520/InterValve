//
//  Chp6ViewController.h
//  InterValve
//
//  Created by Spare on 8/15/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MechanismOfActionVC : UIViewController
@property (strong, nonatomic) IBOutlet UISlider *crossfadeSliderOutlet;
@property (strong, nonatomic) IBOutlet UIImageView *v8DeviceImage;
@property (strong, nonatomic) IBOutlet UIImageView *conventionalDeviceImage;
@property (strong, nonatomic) IBOutlet UIView *bothDevicesImage;
- (IBAction)backBtn:(id)sender;

- (IBAction)sliderAction:(id)sender;


@end

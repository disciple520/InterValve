//
//  Chp5ViewController.m
//  InterValve
//
//  Created by Spare on 8/16/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import "SizingAnimationVC.h"
#import "SizingSlideTwoVC.h"
#import "DisclaimerView.h"

@interface SizingAnimationVC ()


@end

@implementation SizingAnimationVC
@synthesize sizingSliderOutlet;
@synthesize animationImage;
@synthesize valueLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Customize Slider
    CGAffineTransform rotate = CGAffineTransformMakeRotation(M_PI * 1.5);
    sizingSliderOutlet.transform = rotate;
    sizingSliderOutlet.frame = CGRectMake(711, 505, 34, 275);
    [sizingSliderOutlet setMinimumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
    [sizingSliderOutlet setMaximumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
    UIImage *sliderButton = [UIImage imageNamed:@"SliderButton.png"];
    
    
    CGSize newSize = CGSizeMake(30,30);  //whatever size
    UIGraphicsBeginImageContext(newSize);
    [sliderButton drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *smallerThumb = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    [sizingSliderOutlet setThumbImage:smallerThumb forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
};

- (IBAction)sizingSlider:(id)sender {
    
    //self.valueLabel.text = [NSString stringWithFormat: @"Slider value: %f", [self.sizingSliderOutlet value]];
    
    if (sizingSliderOutlet.value <= 22.5){
        [animationImage setImage:[UIImage imageNamed:@"19mm.png"]];
        sizingSliderOutlet.value = 22;
    }
    if (sizingSliderOutlet.value > 22.5 & sizingSliderOutlet.value <= 23.5){
        [animationImage setImage:[UIImage imageNamed:@"20mm.png"]];
        sizingSliderOutlet.value = 23;
    }
    if (sizingSliderOutlet.value > 23.5 & sizingSliderOutlet.value <= 24.5){
        [animationImage setImage:[UIImage imageNamed:@"21mm.png"]];
                sizingSliderOutlet.value = 24;
    }
    if (sizingSliderOutlet.value > 24.5 & sizingSliderOutlet.value <= 25.5){
        [animationImage setImage:[UIImage imageNamed:@"22mm.png"]];
                sizingSliderOutlet.value = 25;
    }
    if (sizingSliderOutlet.value > 25.5){
        [animationImage setImage:[UIImage imageNamed:@"23mm.png"]];
                sizingSliderOutlet.value = 26;
    }

    
}
- (IBAction)backBtn:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)showDisclaimer:(id)sender {
    DisclaimerView *dv = [[DisclaimerView alloc] initWithFrame:CGRectMake(200, 50, 624, 550)];
    [dv setHTML:[sender tag]];
    [self.view addSubview:dv];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqual: @"toSlide2"]){
        //Chp5Slide2ViewController *slide2 = [segue destinationViewController];
        //slide2.slide1 = self;
    }
}
@end

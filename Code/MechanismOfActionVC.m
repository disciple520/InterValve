//
//  Chp6ViewController.m
//  InterValve
//
//  Created by Spare on 8/15/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import "MechanismOfActionVC.h"
#import "DisclaimerView.h"

@interface MechanismOfActionVC ()

@end

@implementation MechanismOfActionVC
@synthesize v8DeviceImage;
@synthesize conventionalDeviceImage;
@synthesize crossfadeSliderOutlet;

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
    
    // Set background color to clear in order to see window image
    self.view.backgroundColor = [UIColor clearColor];
    
    
    
    //rotate slider
    CGAffineTransform rotate = CGAffineTransformMakeRotation(M_PI * 1.5);
    crossfadeSliderOutlet.transform = rotate;
    NSLog(@"crossfader frame: %@",NSStringFromCGRect(crossfadeSliderOutlet.frame));
    [crossfadeSliderOutlet setFrame:CGRectMake(815, 470, 34, 224)];
    
    UIImage *sliderButton = [UIImage imageNamed:@"SliderButton.png"];
    
    
    CGSize newSize = CGSizeMake(30,30);  //whaterver size
    UIGraphicsBeginImageContext(newSize);
    [sliderButton drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *smallerThumb = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    [crossfadeSliderOutlet setThumbImage:smallerThumb forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backBtn:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)showDisclaimer:(id)sender {
    DisclaimerView *dv = [[DisclaimerView alloc] initWithFrame:CGRectMake(200, 50, 624, 550)];
    [dv setHTML:[sender tag]];
    [self.view addSubview:dv];
}

- (IBAction)sliderAction:(id)sender {
    if (crossfadeSliderOutlet.value <= 4) {
        conventionalDeviceImage.alpha = 1;
        v8DeviceImage.alpha = 0;
    }
    else if (crossfadeSliderOutlet.value > 4 && crossfadeSliderOutlet.value <=50){
        conventionalDeviceImage.alpha = 1-(crossfadeSliderOutlet.value/50);
    }
    else if (crossfadeSliderOutlet.value > 50 &&  crossfadeSliderOutlet.value < 96){
        v8DeviceImage.alpha = (crossfadeSliderOutlet.value-50)/50;
    }
    else if (crossfadeSliderOutlet.value >= 96){
        v8DeviceImage.alpha = 1;
        conventionalDeviceImage.alpha = 0;
    }
}
@end

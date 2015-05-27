//
//  BrandedAnimationVC.m
//  InterValve
//
//  Created by Aaron Hintgen on 10/22/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import "BrandedAnimationVC.h"
#import "DisclaimerView.h"

@interface BrandedAnimationVC ()

@end

@implementation BrandedAnimationVC
{
    MPMoviePlayerController *mpc;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)playVid:(id)sender {
    
    // Set the Video
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"brandedanimation" ofType:@"mov"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    //Initialize and display Movie Player and adjust settings
    mpc = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    [mpc.view setFrame:CGRectMake(344, 208, 640, 360)];
    [[self view] addSubview:mpc.view];
    [mpc setFullscreen:NO];
    [mpc setControlStyle:MPMovieControlStyleDefault];
    mpc.repeatMode = MPMovieRepeatModeOne;
    //Add Title Overlay for Video
    //    [[self view]addSubview:titleOverlay.view];
    
    [mpc play];
}

-(IBAction)showDisclaimer:(id)sender {
    DisclaimerView *dv = [[DisclaimerView alloc] initWithFrame:CGRectMake(200, 50, 624, 550)];
    [dv setHTML:[sender tag]];
    [self.view addSubview:dv];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end


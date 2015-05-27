//
//  Chp1ViewController.m
//  InterValve
//
//  Created by Spare on 8/16/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import "BalloonStabilityVC.h"
#import "DisclaimerView.h"

@interface BalloonStabilityVC ()
{

    int currentVideo;
}

@end

@implementation BalloonStabilityVC


- (IBAction)backBtn:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)playChp1Vid1:(id)sender {
    currentVideo = 1;
    if ([_mpc2 respondsToSelector:@selector(setFullscreen:animated:)]) {
        [_mpc2 stop];
        [_mpc2.view removeFromSuperview];
    }
    // Set the Video
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"ConventionalBalloonMovement" ofType:@"mov"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    //Initialize and display Movie Player and adjust settings
    _mpc = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [_mpc setMovieSourceType:MPMovieSourceTypeFile];
    [_mpc.view setFrame:CGRectMake(61, 240, 384, 384)];
    [[self view] addSubview:_mpc.view];
    [_mpc setFullscreen:NO];
    [_mpc setControlStyle:MPMovieControlStyleDefault];
    _mpc.repeatMode = MPMovieRepeatModeOne;
    
    [_mpc play];
}

- (IBAction)playChp1Vid2:(id)sender {
    currentVideo = 2;
    if ([_mpc respondsToSelector:@selector(setFullscreen:animated:)]) {
        [_mpc stop];
        [_mpc.view removeFromSuperview];
    }
    // Set the Video
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"V8BalloonStability" ofType:@"mov"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    //Initialize and display Movie Player and adjust settings
    _mpc2 = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [_mpc2 setMovieSourceType:MPMovieSourceTypeFile];
    [_mpc2.view setFrame:CGRectMake(580, 240, 384, 384)];
    [[self view] addSubview:_mpc2.view];
    [_mpc2 setFullscreen:NO];
    [_mpc2 setControlStyle:MPMovieControlStyleDefault];
    _mpc2.repeatMode = MPMovieRepeatModeOne;
    
 
    
    [_mpc2 play];
}

- (IBAction)playCompetitor:(id)sender {
    currentVideo = 1;
    if ([_mpc2 respondsToSelector:@selector(setFullscreen:animated:)]) {
        [_mpc2 stop];
        [_mpc2.view removeFromSuperview];
    }
    // Set the Video
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"NucleusBalloonInflation" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    //Initialize and display Movie Player and adjust settings
    _mpc = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [_mpc setMovieSourceType:MPMovieSourceTypeFile];
    [_mpc.view setFrame:CGRectMake(32, 240, 450, 249)];
    [[self view] addSubview:_mpc.view];
    [_mpc setFullscreen:NO];
    [_mpc setControlStyle:MPMovieControlStyleDefault];
    _mpc.repeatMode = MPMovieRepeatModeOne;
    
    [_mpc play];
}

- (IBAction)playV8:(id)sender {
    currentVideo = 2;
    if ([_mpc respondsToSelector:@selector(setFullscreen:animated:)]) {
        [_mpc stop];
        [_mpc.view removeFromSuperview];
    }
    // Set the Video
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"V8BalloonInflation" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    //Initialize and display Movie Player and adjust settings
    _mpc2 = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [_mpc2 setMovieSourceType:MPMovieSourceTypeFile];
    [_mpc2.view setFrame:CGRectMake(544, 240, 450, 249)];
    [[self view] addSubview:_mpc2.view];
    [_mpc2 setFullscreen:NO];
    [_mpc2 setControlStyle:MPMovieControlStyleDefault];
    _mpc2.repeatMode = MPMovieRepeatModeOne;
    
    
    
    [_mpc2 play];
}

-(IBAction)showDisclaimer:(id)sender {
    DisclaimerView *dv = [[DisclaimerView alloc] initWithFrame:CGRectMake(200, 50, 624, 550)];
    [dv setHTML:[sender tag]];
    [self.view addSubview:dv];
}

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

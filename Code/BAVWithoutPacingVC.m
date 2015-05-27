//
//  Chp4ViewController.m
//  InterValve
//
//  Created by Spare on 8/16/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import "BAVWithoutPacingVC.h"
#import "DisclaimerView.h"

@interface BAVWithoutPacingVC () {
    MPMoviePlayerController *mpc;
}

@end

@implementation BAVWithoutPacingVC

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
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"bav" ofType:@"mov"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    //Initialize and display Movie Player and adjust settings
    mpc = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    [mpc.view setFrame:CGRectMake(350, 208, 500, 500)];
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

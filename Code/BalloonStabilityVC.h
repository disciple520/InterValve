//
//  Chp1ViewController.h
//  InterValve
//
//  Created by Spare on 8/16/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface BalloonStabilityVC : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (nonatomic,strong) MPMoviePlayerController *mpc;
@property (nonatomic,strong) MPMoviePlayerController *mpc2;

- (IBAction)backBtn:(id)sender;
- (IBAction)playChp1Vid1:(id)sender;
- (IBAction)playChp1Vid2:(id)sender;
- (IBAction)playCompetitor:(id)sender;
- (IBAction)playV8:(id)sender;

@end
